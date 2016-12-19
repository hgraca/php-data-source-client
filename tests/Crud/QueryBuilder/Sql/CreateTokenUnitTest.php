<?php

namespace Hgraca\MicroDbal\Test\Crud\QueryBuilder\Sql;

use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\CreateToken;
use PHPUnit_Framework_TestCase;

final class CreateTokenUnitTest extends PHPUnit_Framework_TestCase
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

        $createToken = new CreateToken($column, $value, $bindingCounter);
        self::assertEquals(
            CreateToken::BINDING_PREFIX . $bindingCounter,
            $createToken->toString()
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

        $createToken = new CreateToken($column, $value, $bindingCounter);

        self::assertEquals(
            [CreateToken::BINDING_PREFIX . $bindingCounter => $value],
            $createToken->getBinding()
        );
    }
}
