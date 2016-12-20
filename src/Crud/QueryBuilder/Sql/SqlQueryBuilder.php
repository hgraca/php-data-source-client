<?php

namespace Hgraca\MicroDbal\Crud\QueryBuilder\Sql;

use Hgraca\Helper\ArrayHelper;
use Hgraca\MicroDbal\Crud\CrudQueryBuilderInterface;

final class SqlQueryBuilder implements CrudQueryBuilderInterface
{
    public function buildCreateQuery(string $table, array $data): array
    {
        $createTokenCollection = ArrayHelper::isTwoDimensional($data)
            ? new CreateTokenCollectionCollection($data)
            : new CreateTokenCollection($data);

        $columnNamesList = $createTokenCollection->getColumnList();
        $columnPlaceholdersList = $createTokenCollection->getPlaceholderList();
        $bindings = $createTokenCollection->getBindingsList();

        return [
            "INSERT INTO `$table` $columnNamesList VALUES $columnPlaceholdersList",
            $bindings,
        ];
    }

    public function buildReadQuery(
        string $table,
        array $filter = [],
        array $orderBy = [],
        int $limit = null,
        int $offset = 1
    ): array {
        $sqlSelect = "SELECT * FROM `$table`";
        list($sqlFilter, $filterBindings) = $this->createWhere($filter);
        $sqlOrderBy = $this->createOrderBy($orderBy);
        $sqlLimit = $this->createLimit($limit);
        $sqlOffset = $this->createOffset($offset);

        return [
            $sqlSelect . $sqlFilter . $sqlOrderBy . $sqlLimit . $sqlOffset,
            $filterBindings
        ];
    }

    public function buildUpdateQuery(string $table, array $data = [], array $filter = []): array
    {
        list($sqlUpdate, $updateBindings) = $this->createUpdate($table, $data);
        list($sqlWhere, $whereBindings) = $this->createWhere($filter);

        return [$sqlUpdate . $sqlWhere, array_merge($updateBindings, $whereBindings)];
    }

    public function buildDeleteQuery(string $table, array $filter = []): array
    {
        list($sqlFilter, $bindings) = $this->createWhere($filter);

        return [
            "DELETE FROM `$table`" . $sqlFilter,
            $bindings,
        ];
    }

    private function createUpdate(string $tableName, array $dataList): array
    {
        $updateTokenCollection = new UpdateTokenCollection($dataList);

        return [
            "UPDATE `$tableName` SET " . $updateTokenCollection->toString(),
            $updateTokenCollection->getBindingsList()
        ];
    }

    private function createWhere(array $filter = []): array
    {
        if (empty($filter)) {
            return ['', []];
        }

        $filterCollection = new WhereTokenCollection($filter);

        return [' WHERE ' . $filterCollection->toString(), $filterCollection->getBindingsList()];
    }

    private function createOrderBy(array $orderBy = []): string
    {
        if (empty($orderBy)) {
            return '';
        }

        $orderByItems = [];
        foreach ($orderBy as $column => $direction) {
            $orderByItems[] = '`' . $column . '` ' . $direction;
        }

        return ' ORDER BY ' . implode(', ', $orderByItems);
    }

    private function createLimit(int $limit = null): string
    {
        return $limit === null ? '' : " LIMIT $limit";
    }

    private function createOffset(int $offset = 1): string
    {
        return $offset === 1 ? '' : " OFFSET $offset";
    }
}
