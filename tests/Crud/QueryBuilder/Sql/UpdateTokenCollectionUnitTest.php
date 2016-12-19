<?php

namespace Hgraca\MicroDbal\Test\Crud\QueryBuilder\Sql;

use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\UpdateTokenCollection;
use PHPUnit_Framework_TestCase;

final class UpdateTokenCollectionUnitTest extends PHPUnit_Framework_TestCase
{
    /**
     * @test
     *
     * @small
     */
    public function toString()
    {
        $dataSet = [
            'id' => 1,
            'dummy_column_1' => 'some text',
            'dummy_column_2' => null,
        ];

        $updateTokenCollection = new UpdateTokenCollection($dataSet);

        self::assertEquals(
            '`id`=:u0, `dummy_column_1`=:u1, `dummy_column_2`=:u2',
            $updateTokenCollection->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function getBindingsList()
    {
        $dataSet = [
            'id' => 1,
            'dummy_column_1' => 'some text',
            'dummy_column_2' => null,
        ];

        $updateTokenCollection = new UpdateTokenCollection($dataSet);

        self::assertEquals(
            [
                ':u0' => 1,
                ':u1' => 'some text',
                ':u2' => null,
            ],
            $updateTokenCollection->getBindingsList()
        );
    }
}
