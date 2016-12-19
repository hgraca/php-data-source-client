<?php

namespace Hgraca\MicroDbal\Crud;

interface CrudQueryBuilderInterface
{
    /**
     * @param string $table
     * @param array $data ie: [
     *          ['column_1_name' => 'value', 'column_2_name' => 2],
     *          ['column_1_name' => 'another value', 'column_2_name' => 7],
     *          ...,
     *      ]
     * OR simply: ['column_1_name' => 'value', 'column_2_name' => 2]
     *
     * @return array [
     *      'A native query string',
     *      [
     *          ['binding1' => 'value', 'binding2' => 2],
     *          ['binding1' => 'another value', 'binding2' => 7],
     *          ...,
     *      ]
     * ]
     */
    public function buildCreateQuery(string $table, array $data): array;

    public function buildReadQuery(
        string $table,
        array $filter = [],
        array $orderBy = [],
        int $limit = 30,
        int $offset = 1
    ): array;

    public function buildUpdateQuery(string $table, array $data = [], array $filter = []): array;

    /**
     * @param string $table
     * @param array $filter single or multi dimensional array where each row is a filter as in:
     *      ['column_1_name' => 'value', 'column_2_name' => [1, 2, 3]]
     * turns into
     *      WHERE column_1_name = 'value'
     *          AND (
     *              column_2_name = 1
     *              OR column_2_name = 2
     *              OR column_2_name = 3
     *          )
     *
     * @return array [
     *      'A native query string',
     *      [
     *          ['binding1' => 'value', 'binding2' => 2],
     *          ['binding1' => 'another value', 'binding2' => 7],
     *          ...,
     *      ]
     * ]
     */
    public function buildDeleteQuery(string $table, array $filter = []): array;
}
