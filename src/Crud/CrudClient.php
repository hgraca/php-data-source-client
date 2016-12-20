<?php

namespace Hgraca\MicroDbal\Crud;

use Hgraca\MicroDbal\CrudClientInterface;
use Hgraca\MicroDbal\RawClientInterface;

final class CrudClient implements CrudClientInterface
{
    /**
     * @var RawClientInterface
     */
    private $client;

    /**
     * @var CrudQueryBuilderInterface
     */
    private $crudQueryBuilder;

    public function __construct(RawClientInterface $client, CrudQueryBuilderInterface $crudQueryBuilder)
    {
        $this->client = $client;
        $this->crudQueryBuilder = $crudQueryBuilder;
    }

    public function create(string $table, array $data)
    {
        list($queryString, $dataBindingsList) = $this->crudQueryBuilder->buildCreateQuery($table, $data);
        $this->client->executeCommand($queryString, $dataBindingsList);
    }

    public function read(
        string $table,
        array $filter = [],
        array $orderBy = [],
        int $limit = null,
        int $offset = 1
    ): array {
        list($queryString, $filterBindingsList) = $this->crudQueryBuilder
            ->buildReadQuery($table, $filter, $orderBy, $limit, $offset);
        return $this->client->executeQuery($queryString, $filterBindingsList);
    }

    public function update(string $table, array $data, array $filter = [])
    {
        list($queryString, $bindingsList) = $this->crudQueryBuilder->buildUpdateQuery($table, $data, $filter);
        $this->client->executeCommand($queryString, $bindingsList);
    }

    public function delete(string $table, array $filter = [])
    {
        list($queryString, $filterBindingsList) = $this->crudQueryBuilder->buildDeleteQuery($table, $filter);
        $this->client->executeCommand($queryString, $filterBindingsList);
    }
}
