<?php

namespace Hgraca\MicroDbal\Crud\QueryBuilder\Sql;

final class WhereToken
{
    const BINDING_PREFIX = ':w';

    const COMPARISON_LESS = '<';
    const COMPARISON_LESS_OR_EQUAL = '<=';
    const COMPARISON_EQUAL = '=';
    const COMPARISON_HIGHER_OR_EQUAL = '>=';
    const COMPARISON_HIGHER = '>';
    const COMPARISON_IS = ' IS ';

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

    /**
     * @var string
     */
    private $comparison;

    public function __construct(
        string $column,
        $value,
        int $bindingCounter = 0,
        string $comparison = self::COMPARISON_EQUAL
    ) {
        $this->column = $column;
        $this->value = $value;
        $this->bindingNumber = $bindingCounter;
        $this->comparison = ($value === null) ? self::COMPARISON_IS : $comparison;
    }

    public function toString(): string
    {
        return ($this->value instanceof WhereTokenCollection)
            ? '(' . $this->value->toString() . ')'
            : '`' . $this->column . '`' . $this->comparison . self::BINDING_PREFIX . $this->bindingNumber;
    }

    public function getBinding(): array
    {
        return ($this->value instanceof WhereTokenCollection)
            ? $this->value->getBindingsList()
            : [self::BINDING_PREFIX . $this->bindingNumber => $this->value];
    }
}
