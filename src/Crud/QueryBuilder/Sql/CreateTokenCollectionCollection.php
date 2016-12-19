<?php

namespace Hgraca\MicroDbal\Crud\QueryBuilder\Sql;

final class CreateTokenCollectionCollection
{
    /** @var CreateTokenCollection[] */
    private $collection;

    public function __construct(array $dataSetList)
    {
        foreach ($dataSetList as $dataSet) {
            $this->collection[] = new CreateTokenCollection($dataSet);
        };
    }

    public function getColumnList(): string
    {
        $createTokenCollection = reset($this->collection);

        return $createTokenCollection->getColumnList();
    }

    public function getPlaceholderList(): string
    {
        $createTokenCollection = reset($this->collection);

        return $createTokenCollection->getPlaceholderList();
    }

    public function getBindingsList(): array
    {
        $bindingsList = [];

        foreach ($this->collection as $createTokenCollection) {
            $bindingsList[] = $createTokenCollection->getBindingsList();
        }

        return $bindingsList;
    }
}
