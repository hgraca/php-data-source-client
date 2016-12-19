<?php

namespace Hgraca\MicroDbal\Test\Crud\QueryBuilder\Sql;

use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\CreateToken;
use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\CreateTokenCollection;
use PHPUnit_Framework_TestCase;

final class CreateTokenCollectionUnitTest extends PHPUnit_Framework_TestCase
{
    /** @var array */
    private $dataSet = [
        'id' => 1,
        'dummy_column_1' => 'some text',
        'dummy_column_2' => null,
    ];

    /** @var CreateTokenCollection */
    private $createTokenCollection;

    /**
     * @before
     */
    public function setUpCollection()
    {
        $this->createTokenCollection = new CreateTokenCollection($this->dataSet);
    }

    /**
     * @test
     *
     * @small
     */
    public function getColumnList()
    {
        self::assertEquals(
            '(`id`, `dummy_column_1`, `dummy_column_2`)',
            $this->createTokenCollection->getColumnList()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function getPlaceholderList()
    {
        self::assertEquals(
            '(' . CreateToken::BINDING_PREFIX . '0, ' . CreateToken::BINDING_PREFIX . '1, ' . CreateToken::BINDING_PREFIX . '2)',
            $this->createTokenCollection->getPlaceholderList()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function getBindingsList()
    {
        self::assertEquals(
            [
                ':c0' => 1,
                ':c1' => 'some text',
                ':c2' => null,
            ],
            $this->createTokenCollection->getBindingsList()
        );
    }
}
