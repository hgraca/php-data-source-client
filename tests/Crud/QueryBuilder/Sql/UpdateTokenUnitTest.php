<?php

namespace Hgraca\MicroDbal\Test\Crud\QueryBuilder\Sql;

use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\UpdateToken;
use PHPUnit_Framework_TestCase;

final class UpdateTokenUnitTest extends PHPUnit_Framework_TestCase
{
    /**
     * @test
     *
     * @small
     */
    public function toString()
    {
        $column = 'dummy_column';
        $value = 'something';
        $bindingCounter = 5;

        $updateToken = new UpdateToken($column, $value, $bindingCounter);

        self::assertEquals(
            "`$column`=" . UpdateToken::BINDING_PREFIX . $bindingCounter,
            $updateToken->toString()
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function getBinding()
    {
        $column = 'dummy_column';
        $value = 'something';
        $bindingCounter = 5;

        $updateToken = new UpdateToken($column, $value, $bindingCounter);

        self::assertEquals(
            [UpdateToken::BINDING_PREFIX . $bindingCounter => $value],
            $updateToken->getBinding()
        );
    }
}
