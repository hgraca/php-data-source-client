<?php

namespace Hgraca\MicroDbal\Test\Crud\QueryBuilder\Sql;

use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\WhereToken;
use PHPUnit_Framework_TestCase;

final class WhereTokenUnitTest extends PHPUnit_Framework_TestCase
{
    /**
     * @test
     *
     * @small
     */
    public function toString_GeneratesCorrectSqlWithAnd()
    {
        $column = 'dummy_column';
        $value = 'something';
        $bindingCounter = 5;

        $whereToken = new WhereToken($column, $value, $bindingCounter);

        self::assertEquals(
            "`$column`" . WhereToken::COMPARISON_EQUAL . WhereToken::BINDING_PREFIX . $bindingCounter,
            $whereToken->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function toString_GeneratesCorrectSqlWithOr()
    {
        $column = 'dummy_column';
        $value = 'something';
        $bindingCounter = 5;

        $whereToken = new WhereToken($column, $value, $bindingCounter);

        self::assertEquals(
            "`$column`" . WhereToken::COMPARISON_EQUAL . WhereToken::BINDING_PREFIX . $bindingCounter,
            $whereToken->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function toString_GeneratesCorrectSqlWithIs()
    {
        $column = 'dummy_column';
        $value = null;
        $bindingCounter = 5;

        $whereToken = new WhereToken($column, $value, $bindingCounter);

        self::assertEquals(
            "`$column`" . WhereToken::COMPARISON_IS . WhereToken::BINDING_PREFIX . $bindingCounter,
            $whereToken->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function toString_GeneratesCorrectSqlWithOtherComparison()
    {
        $column = 'dummy_column';
        $value = 4;
        $bindingCounter = 5;

        $whereToken = new WhereToken($column, $value, $bindingCounter, WhereToken::COMPARISON_HIGHER_OR_EQUAL);

        self::assertEquals(
            "`$column`" . WhereToken::COMPARISON_HIGHER_OR_EQUAL . WhereToken::BINDING_PREFIX . $bindingCounter,
            $whereToken->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function geBinding_WithOneDimensionFilter()
    {
        $column = 'dummy_column';
        $value = 4;
        $bindingCounter = 5;

        $whereToken = new WhereToken($column, $value, $bindingCounter, WhereToken::COMPARISON_HIGHER_OR_EQUAL);

        self::assertEquals(
            [':w5' => 4],
            $whereToken->getBinding()
        );
    }
}
