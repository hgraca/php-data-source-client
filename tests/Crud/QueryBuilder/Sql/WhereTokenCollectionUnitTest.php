<?php

namespace Hgraca\MicroDbal\Test\Crud\QueryBuilder\Sql;

use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\WhereToken;
use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\WhereTokenCollection;
use PHPUnit_Framework_TestCase;

final class WhereTokenCollectionUnitTest extends PHPUnit_Framework_TestCase
{
    /**
     * @test
     *
     * @small
     */
    public function toString_WithOneLevelAndFiltering()
    {
        $whereToken = [
            'id' => 1,
            'dummy_column_1' => 'some text',
            'dummy_column_2' => null,
        ];

        $whereTokenCollection = new WhereTokenCollection($whereToken);

        self::assertEquals(
            '`id`=' . WhereToken::BINDING_PREFIX . '0 AND `dummy_column_1`=' . WhereToken::BINDING_PREFIX . '1 AND `dummy_column_2` IS ' . WhereToken::BINDING_PREFIX . '2',
            $whereTokenCollection->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function toString_WithOneLevelOrFiltering()
    {
        $whereToken = [
            'id' => 1,
            'dummy_column_1' => 'some text',
            'dummy_column_2' => null,
        ];

        $whereTokenCollection = new WhereTokenCollection($whereToken, WhereTokenCollection::OPERATION_OR);

        self::assertEquals(
            '`id`=' . WhereToken::BINDING_PREFIX . '0 OR `dummy_column_1`=' . WhereToken::BINDING_PREFIX . '1 OR `dummy_column_2` IS ' . WhereToken::BINDING_PREFIX . '2',
            $whereTokenCollection->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function toString_WithTwoLevelAndFiltering()
    {
        $whereToken = [
            'id' => [1, 2, 3],
            'dummy_column_1' => 'some text',
            'dummy_column_2' => null,
        ];

        $whereTokenCollection = new WhereTokenCollection($whereToken);

        self::assertEquals(
            '(`id`=' . WhereToken::BINDING_PREFIX . '0 OR `id`=' . WhereToken::BINDING_PREFIX . '1 OR `id`=' . WhereToken::BINDING_PREFIX . '2) AND `dummy_column_1`=' . WhereToken::BINDING_PREFIX . '3 AND `dummy_column_2` IS ' . WhereToken::BINDING_PREFIX . '4',
            $whereTokenCollection->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function toString_WithTwoLevelOrFiltering()
    {
        $whereToken = [
            'id' => [1, 2, 3],
            'dummy_column_1' => 'some text',
            'dummy_column_2' => null,
        ];

        $whereTokenCollection = new WhereTokenCollection($whereToken, WhereTokenCollection::OPERATION_OR);

        self::assertEquals(
            '(`id`=' . WhereToken::BINDING_PREFIX . '0 AND `id`=' . WhereToken::BINDING_PREFIX . '1 AND `id`=' . WhereToken::BINDING_PREFIX . '2) OR `dummy_column_1`=' . WhereToken::BINDING_PREFIX . '3 OR `dummy_column_2` IS ' . WhereToken::BINDING_PREFIX . '4',
            $whereTokenCollection->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function toString_WithTwoLevelAndNestedNull()
    {
        $whereToken = [
            'id' => [1, null, 3],
            'dummy_column_1' => 'some text',
            'dummy_column_2' => null,
        ];

        $whereTokenCollection = new WhereTokenCollection($whereToken);

        self::assertEquals(
            '(`id`=' . WhereToken::BINDING_PREFIX . '0 OR `id` IS ' . WhereToken::BINDING_PREFIX . '1 OR `id`=' . WhereToken::BINDING_PREFIX . '2) AND `dummy_column_1`=' . WhereToken::BINDING_PREFIX . '3 AND `dummy_column_2` IS ' . WhereToken::BINDING_PREFIX . '4',
            $whereTokenCollection->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function getBindingsList_WithOneLevel()
    {
        $whereToken = [
            'id' => 1,
            'dummy_column_1' => 'some text',
            'dummy_column_2' => null,
        ];

        $whereTokenCollection = new WhereTokenCollection($whereToken);

        self::assertEquals(
            [
                ':w0' => 1,
                ':w1' => 'some text',
                ':w2' => null,
            ],
            $whereTokenCollection->getBindingsList()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function getBindingsList_WithTwoLevel()
    {
        $whereToken = [
            'id' => [1, 2, 3],
            'dummy_column_1' => 'some text',
            'dummy_column_2' => null,
        ];

        $whereTokenCollection = new WhereTokenCollection($whereToken);

        self::assertEquals(
            [
                ':w0' => 1,
                ':w1' => 2,
                ':w2' => 3,
                ':w3' => 'some text',
                ':w4' => null,
            ],
            $whereTokenCollection->getBindingsList()
        );
    }
}
