<?php

namespace Hgraca\MicroDbal\Crud\QueryBuilder\Sql;

final class CreateTokenCollection
{
    /** @var CreateToken[] */
    private $collection;

    /** @var int */
    private $bindingCounter = 0;

    public function __construct(array $dataSet)
    {
        foreach ($dataSet as $column => $value) {
            $this->collection[] = new CreateToken($column, $value, $this->bindingCounter++);
        };
    }

    public function getColumnList(): string
    {
        $columnList = [];

        foreach ($this->collection as $createToken) {
            $columnList[] = $createToken->getColumn();
        }

        return '(`' . implode('`, `', $columnList) . '`)';
    }

    public function getPlaceholderList(): string
    {
        $stringTokens = [];

        foreach ($this->collection as $createToken) {
            $stringTokens[] = $createToken->toString();
        }

        return '(' . implode(', ', $stringTokens) . ')';
    }

    public function getBindingsList(): array
    {
        $bindingsList = [];

        foreach ($this->collection as $createToken) {
            $bindingsList[] = $createToken->getBinding();
        }

        return array_merge(...$bindingsList);
    }
}
