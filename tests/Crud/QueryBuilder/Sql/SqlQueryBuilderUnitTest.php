<?php

namespace Hgraca\MicroDbal\Test\Crud\QueryBuilder\Sql;

use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\SqlQueryBuilder;
use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\UpdateToken;
use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\WhereToken;
use PHPUnit_Framework_TestCase;

final class SqlQueryBuilderUnitTest extends PHPUnit_Framework_TestCase
{
    /**
     * @test
     *
     * @small
     */
    public function buildCreateQuery_ShouldHandleUniDimensionalDataArray()
    {
        $tableName = 'dummy_table';
        $data = [
            'id' => 1,
            'name' => 'something',
        ];

        $queryBuilder = new SqlQueryBuilder();

        list($sql, $bindings) = $queryBuilder->buildCreateQuery($tableName, $data);

        self::assertEquals("INSERT INTO `$tableName` (`id`, `name`) VALUES (:c0, :c1)", $sql);
        self::assertEquals(
            [
                ':c0' => 1,
                ':c1' => 'something'
            ],
            $bindings
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function buildCreateQuery_ShouldHandleMultiDimensionalDataArray()
    {
        $tableName = 'dummy_table';
        $data = [['id' => 1, 'name' => 'something'], ['id' => 2, 'name' => 'something else']];

        $queryBuilder = new SqlQueryBuilder();

        list($sql, $bindings) = $queryBuilder->buildCreateQuery($tableName, $data);

        self::assertEquals("INSERT INTO `$tableName` (`id`, `name`) VALUES (:c0, :c1)", $sql);
        self::assertEquals(
            [
                [
                    ':c0' => 1,
                    ':c1' => 'something',
                ],
                [
                    ':c0' => 2,
                    ':c1' => 'something else',
                ],
            ],
            $bindings
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function buildReadQuery()
    {
        $tableName = 'dummy_table';
        $where = [
            'id' => [1, 2, 3],
            'name' => 'something',
        ];
        $orderBy = [
            'id' => 'ASC',
            'name' => 'DESC',
        ];
        $limit = 100;
        $offset = 3;

        $queryBuilder = new SqlQueryBuilder();

        list($sql, $bindings) = $queryBuilder->buildReadQuery($tableName, $where, $orderBy, $limit, $offset);

        self::assertEquals(
            'SELECT * FROM `dummy_table` WHERE (`id`=:w0 OR `id`=:w1 OR `id`=:w2) AND `name`=:w3 ORDER BY `id` ASC, `name` DESC LIMIT 100 OFFSET 3',
            $sql
        );
        self::assertEquals(
            [
                WhereToken::BINDING_PREFIX . '0' => 1,
                WhereToken::BINDING_PREFIX . '1' => 2,
                WhereToken::BINDING_PREFIX . '2' => 3,
                WhereToken::BINDING_PREFIX . '3' => 'something',
            ],
            $bindings
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function buildUpdateQuery()
    {
        $tableName = 'dummy_table';
        $update = [
            'name' => 'something',
            'age' => 21,
        ];
        $where = [
            'id' => 1,
            'name' => 'something',
        ];

        $queryBuilder = new SqlQueryBuilder();

        list($sql, $bindings) = $queryBuilder->buildUpdateQuery($tableName, $update, $where);

        self::assertEquals(
            'UPDATE `dummy_table` SET `name`=:u0, `age`=:u1 WHERE `id`=:w0 AND `name`=:w1',
            $sql
        );
        self::assertEquals(
            [
                UpdateToken::BINDING_PREFIX . '0' => 'something',
                UpdateToken::BINDING_PREFIX . '1' => 21,
                WhereToken::BINDING_PREFIX . '0' => 1,
                WhereToken::BINDING_PREFIX . '1' => 'something',
            ],
            $bindings
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function buildDeleteQuery_ShouldHandleUniDimensionalDataArray()
    {
        $tableName = 'dummy_table';
        $where = [
            'id' => 1,
            'name' => 'something',
        ];

        $queryBuilder = new SqlQueryBuilder();

        list($sql, $bindings) = $queryBuilder->buildDeleteQuery($tableName, $where);

        self::assertEquals(
            "DELETE FROM `$tableName` WHERE `id`=" . WhereToken::BINDING_PREFIX . '0 AND `name`=' . WhereToken::BINDING_PREFIX . '1',
            $sql
        );
        self::assertEquals(
            [
                WhereToken::BINDING_PREFIX . '0' => 1,
                WhereToken::BINDING_PREFIX . '1' => 'something',
            ],
            $bindings
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function buildDeleteQuery_ShouldHandleMultiDimensionalDataArray()
    {
        $tableName = 'dummy_table';
        $where = [
            'id' => [1, 2, 3],
            'name' => 'something',
        ];

        $queryBuilder = new SqlQueryBuilder();

        list($sql, $bindings) = $queryBuilder->buildDeleteQuery($tableName, $where);

        self::assertEquals(
            "DELETE FROM `$tableName` WHERE (`id`=" . WhereToken::BINDING_PREFIX . '0 OR `id`=' . WhereToken::BINDING_PREFIX . '1 OR `id`=' . WhereToken::BINDING_PREFIX . '2) AND `name`=' . WhereToken::BINDING_PREFIX . '3',
            $sql
        );
        self::assertEquals(
            [
                WhereToken::BINDING_PREFIX . '0' => 1,
                WhereToken::BINDING_PREFIX . '1' => 2,
                WhereToken::BINDING_PREFIX . '2' => 3,
                WhereToken::BINDING_PREFIX . '3' => 'something',
            ],
            $bindings
        );
    }
}
