<?php

namespace Hgraca\MicroDbal\Test;

use PHPUnit_Framework_TestCase;

abstract class IntegrationTestAbstract extends PHPUnit_Framework_TestCase
{
    /** @var string */
    private $rootDir;

    /**
     * @before
     */
    public function prepareTestDb()
    {
        copy(__DIR__ . '/northwind.sqlite', $this->getTestDbPath());
    }

    protected function getRootDir(): string
    {
        return $this->rootDir ?? $this->rootDir = ROOT_DIR;
    }

    protected function getTestDbPath(): string
    {
        return $this->getRootDir() . '/var/tmp/northwind.sqlite';
    }
}
