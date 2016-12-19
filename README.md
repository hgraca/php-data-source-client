# Hgraca\MicroDbal
[![Author](http://img.shields.io/badge/author-@hgraca-blue.svg?style=flat-square)](https://www.herbertograca.com)
[![Software License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Latest Version](https://img.shields.io/github/release/hgraca/php-micro-dbal.svg?style=flat-square)](https://github.com/hgraca/php-micro-dbal/releases)
[![Total Downloads](https://img.shields.io/packagist/dt/hgraca/micro-dbal.svg?style=flat-square)](https://packagist.org/packages/hgraca/micro-dbal)

[![Build Status](https://img.shields.io/scrutinizer/build/g/hgraca/php-micro-dbal.svg?style=flat-square)](https://scrutinizer-ci.com/g/hgraca/php-micro-dbal/build)
[![Coverage Status](https://img.shields.io/scrutinizer/coverage/g/hgraca/php-micro-dbal.svg?style=flat-square)](https://scrutinizer-ci.com/g/hgraca/php-micro-dbal/code-structure)
[![Quality Score](https://img.shields.io/scrutinizer/g/hgraca/php-micro-dbal.svg?style=flat-square)](https://scrutinizer-ci.com/g/hgraca/php-micro-dbal)

A PHP DBAL client

**TODO**: A short description of what is the project. This should explain **what** the project is.
**TODO**: A short description of the motivation behind the creation and maintenance of the project. This should explain **why** the project exists.

## Usage

**TODO**: A short explanation of how to use the project. This should explain **how** the project is usable.
After installing this in your project, as specified below, you can easily use the CRUD client, ie:

```php
$crudClient = new CrudClient(new PdoClient(new PDO($dsn)), new SqlQueryBuilder());

// public function create(string $table, array $data);
$crudClient->create('Employees', ['EmployeeID' => '1', 'Name' => 'Maria]);

// public function read(string $table, array $filter = [], array $orderBy = [], int $limit = 30, int $offset = 1): array;
$crudClient->read('Employees', ['EmployeeID' => '1']);
$crudClient->read('Employees', ['EmployeeID' => ['1', '2', '3']]);

// public function update(string $table, array $data, array $filter = []);
$crudClient->update('Employees', ['Name' => 'Josefina], ['EmployeeID' => '1']);

// public function delete(string $table, array $filter = []);
$crudClient->delete('Employees', ['EmployeeID' => '1']);
```
Or the raw client, ie:

```php
$rawClient = new PdoClient(new PDO($dsn);

$this->client->executeQuery($sql, $bindingsList);
$this->client->executeCommand($sql, $bindingsList);
```

## Installation

To install the library, run the command below and you will get the latest version:

```bash
composer require hgraca/micro-dbal
```

## Tests

To run the tests run:
```bash
make test
```
Or just one of the following:
```bash
make test-acceptance
make test-functional
make test-integration
make test-unit
make test-humbug
```
To run the tests in debug mode run:
```bash
make test-debug
```

## Coverage

To generate the test coverage run:
```bash
make coverage
```

## Code standards

To fix the code standards run:
```bash
make cs-fix
```

## Todo

- Implement [nested transactions management](http://php.net/manual/en/pdo.begintransaction.php#116669)
- Implement batch update
