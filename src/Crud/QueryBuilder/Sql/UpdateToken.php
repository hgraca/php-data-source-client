<?php

namespace Hgraca\MicroDbal\Crud\QueryBuilder\Sql;

final class UpdateToken
{
    const BINDING_PREFIX = ':u';

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

    public function toString(): string
    {
        return '`' . $this->column . '`=' . self::BINDING_PREFIX . $this->bindingNumber;
    }

    public function getBinding(): array
    {
        return [self::BINDING_PREFIX . $this->bindingNumber => $this->value];
    }
}
