<?php

namespace Hgraca\MicroDbal\Crud\QueryBuilder\Sql;

final class UpdateTokenCollection
{
    /** @var UpdateToken[] */
    private $collection;

    /** @var int */
    private $bindingCounter = 0;

    public function __construct(array $dataSet)
    {
        foreach ($dataSet as $column => $value) {
            $this->collection[] = new UpdateToken($column, $value, $this->bindingCounter++);
        };
    }

    public function toString(): string
    {
        $updateStringTokens = [];

        foreach ($this->collection as $updateToken) {
            $updateStringTokens[] = $updateToken->toString();
        }

        return implode(', ', $updateStringTokens);
    }

    public function getBindingsList(): array
    {
        $bindingsList = [];

        foreach ($this->collection as $updateToken) {
            $bindingsList[] = $updateToken->getBinding();
        }

        return array_merge(...$bindingsList);
    }
}
