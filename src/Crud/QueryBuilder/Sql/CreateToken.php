<?php

namespace Hgraca\MicroDbal\Crud\QueryBuilder\Sql;

final class CreateToken
{
    const BINDING_PREFIX = ':c';

    /**
     * @var string
     */
    private $column;

    /**
     * @var mixed
     */
    private $value;

    /**
     * @var int
     */
    private $bindingNumber;

    public function __construct(
        string $column,
        $value,
        int $bindingCounter
    ) {
        $this->column = $column;
        $this->value = $value;
        $this->bindingNumber = $bindingCounter;
    }

    public function getColumn(): string
    {
        return $this->column;
    }

    public function toString(): string
    {
        return self::BINDING_PREFIX . $this->bindingNumber;
    }

    public function getBinding(): array
    {
        return [self::BINDING_PREFIX . $this->bindingNumber => $this->value];
    }
}
