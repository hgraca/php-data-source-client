<?php

namespace Hgraca\MicroDbal\Crud\QueryBuilder\Sql;

final class WhereTokenCollection
{
    const OPERATION_AND = 'AND';
    const OPERATION_OR = 'OR';

    /** @var WhereToken[] */
    private $collection;

    /** @var int */
    private $bindingCounter = 0;

    /**
     * @var string
     */
    private $operation;

    public function __construct(
        array $filter,
        string $operation = self::OPERATION_AND,
        string $defaultColumn = null,
        int &$bindingCounter = 0
    ) {
        $this->operation = $operation;
        $this->bindingCounter = &$bindingCounter;

        foreach($filter as $column => $value) {
            $this->collection[] = is_array($value)
                ? new WhereToken(
                    $column,
                    new WhereTokenCollection(
                        $value,
                        $this->getOppositeOperation($operation),
                        is_string($column) ? $column : $defaultColumn,
                        $this->bindingCounter
                    )
                )
                : new WhereToken(is_string($column) ? $column : $defaultColumn, $value, $this->bindingCounter++);
        };
    }

    public function toString(): string
    {
        $whereStringTokens = [];

        foreach ($this->collection as $whereToken) {
            $whereStringTokens[] = $whereToken->toString();
        }

        return implode(' ' . $this->operation . ' ', $whereStringTokens);
    }

    public function getBindingsList(): array
    {
        $bindingsList = [];

        foreach ($this->collection as $whereToken) {
            $bindingsList[] = $whereToken->getBinding();
        }

        return array_merge(...$bindingsList);
    }

    private function getOppositeOperation(string $operation): string
    {
        return $operation === self::OPERATION_AND ? self::OPERATION_OR : self::OPERATION_AND;
    }
}
