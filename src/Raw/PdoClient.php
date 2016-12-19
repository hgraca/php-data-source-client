<?php

namespace Hgraca\MicroDbal\Raw;

use Exception;
use Hgraca\Helper\ArrayHelper;
use Hgraca\MicroDbal\Raw\Exception\BindingException;
use Hgraca\MicroDbal\Raw\Exception\ExecutionException;
use Hgraca\MicroDbal\Raw\Exception\TypeResolutionException;
use Hgraca\MicroDbal\RawClientInterface;
use PDO;
use PDOStatement;

final class PdoClient implements RawClientInterface
{
    /** @var PDO */
    private $pdo;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    public function executeQuery(string $sql, array $bindingsList = []): array
    {
        return $this->execute($sql, $bindingsList)->fetchAll(PDO::FETCH_ASSOC);
    }

    public function executeCommand(string $sql, array $bindingsList)
    {
        if (!ArrayHelper::isTwoDimensional($bindingsList)) {
            $bindingsList = [$bindingsList];
        }

        try {
            $this->pdo->beginTransaction();
            foreach ($bindingsList as $bindings) {
                $preparedStatement = $this->execute($sql, $bindings, $preparedStatement ?? null);
            }
            $this->pdo->commit();
        } catch (Exception $e) {
            $this->pdo->rollBack();
            throw $e;
        }
    }

    /**
     * @throws ExecutionException
     */
    private function execute(string $sql, array $bindings = [], PDOStatement $preparedStatement = null): PDOStatement
    {
        $preparedStatement = $preparedStatement ?? $this->pdo->prepare($sql);

        $this->bindParameterList($preparedStatement, $bindings);

        if (!$preparedStatement->execute()) {
            throw new ExecutionException(
                "Could not execute query: '$sql'"
                . ' Error code: ' . $preparedStatement->errorCode()
                . ' Error Info: ' . json_encode($preparedStatement->errorInfo())
            );
        }

        return $preparedStatement;
    }

    private function bindParameterList(PDOStatement $stmt, array $parameterList)
    {
        foreach ($parameterList as $name => $value) {
            $this->bindParameter($stmt, $name, $value);
        }
    }

    /**
     * @throws BindingException
     */
    private function bindParameter(PDOStatement $stmt, string $name, $value)
    {
        $pdoType = $this->resolvePdoType($value);
        $bound = $stmt->bindValue(
            $name,
            $pdoType === PDO::PARAM_STR ? strval($value) : $value,
            $pdoType
        );

        if (false === $bound) {
            throw new BindingException(
                'Could not bind value: ' . json_encode(['name' => $name, 'value' => $value, 'type' => $pdoType])
            );
        }
    }

    /**
     * @param mixed $value
     *
     * @throws TypeResolutionException
     */
    private function resolvePdoType($value): int
    {
        $type = gettype($value);
        switch ($type) {
            case 'boolean':
                $pdoType = PDO::PARAM_BOOL; // 5
                break;
            case 'string':
            case 'double': // float
                $pdoType = PDO::PARAM_STR; // 2
                break;
            case 'integer':
                $pdoType = PDO::PARAM_INT; // 1
                break;
            case 'NULL':
                $pdoType = PDO::PARAM_NULL; // 0
                break;
            case 'object':
                $class = get_class($value);
                throw new TypeResolutionException("Invalid type '$class' for query filter.");
            default:
                throw new TypeResolutionException("Invalid type '$type' for query filter.");
        }

        return $pdoType;
    }
}
