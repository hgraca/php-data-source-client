<?php

namespace Hgraca\DataSourceClient;

interface ClientInterface
{
    /**
     * Executes a query for data.
     *
     * @param string $queryString The native query string, with place holders for the data bindings
     * @param array $bindingsList The data bindings to be injected in the query, escaped and formatted in the correct
     * data type, according to the native data engine being used.
     * Ie: ['bindingName' => 'value', 'otherBindingName' => 1, ...]
     */
    public function executeQuery(string $queryString, array $bindingsList = []): array;

    /**
     * Executes a data changing command. Ie Create, Update or Delete commands.
     *
     * @param string $queryString The native query string, with place holders for the data bindings
     * @param array $bindingsList The data bindings to be injected in the query, escaped and formatted in the correct
     * data type, according to the native data engine being used, and making use of transactions if applicable.
     * Ie: [
     *      ['bindingName' => 'value', 'otherBindingName' => 1, ...],
     *      ['bindingName' => 'A', 'otherBindingName' => 7, ...],
     *      ...
     *     ]
     */
    public function executeCommand(string $queryString, array $bindingsList);
}
