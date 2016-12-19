<?php

namespace Hgraca\MicroDbal\Test\Crud;

use Hgraca\MicroDbal\Crud\CrudClient;
use Hgraca\MicroDbal\Crud\QueryBuilder\Sql\SqlQueryBuilder;
use Hgraca\MicroDbal\CrudClientInterface;
use Hgraca\MicroDbal\Raw\PdoClient;
use Hgraca\MicroDbal\Test\IntegrationTestAbstract;
use PDO;

final class CrudClientIntegrationTest extends IntegrationTestAbstract
{
    /** @var CrudClientInterface */
    private $crudClient;

    /**
     * @before
     */
    public function setUpCrudClient()
    {
        $dsn = 'sqlite:' . $this->getTestDbPath();
        $pdo = new PDO($dsn);
        $rawClient = new PdoClient($pdo);
        $this->crudClient = new CrudClient($rawClient, new SqlQueryBuilder());
    }

    /**
     * @test
     *
     * @small
     */
    public function create_ShouldCreateOneRecord()
    {
        $this->crudClient->create('Employees', self::EMPLOYEE_A);
        self::assertEquals(
            [
                self::EMPLOYEE_A,
            ],
            $this->crudClient->read('Employees', ['EmployeeID' => self::EMPLOYEE_A['EmployeeID']])
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function create_ShouldCreateSeveralRecords()
    {
        $this->crudClient->create('Employees', [self::EMPLOYEE_A, self::EMPLOYEE_B]);
        self::assertEquals(
            [
                self::EMPLOYEE_A,
                self::EMPLOYEE_B,
            ],
            $this->crudClient->read(
                'Employees',
                [
                    'EmployeeID' => [
                        self::EMPLOYEE_A['EmployeeID'],
                        self::EMPLOYEE_B['EmployeeID'],
                    ],
                ]
            )
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function read()
    {
        self::assertEquals(
            [
                self::EMPLOYEE_LIST[1],
                self::EMPLOYEE_LIST[2],
                self::EMPLOYEE_LIST[3],
                self::EMPLOYEE_LIST[4],
                self::EMPLOYEE_LIST[5],
                self::EMPLOYEE_LIST[6],
                self::EMPLOYEE_LIST[7],
                self::EMPLOYEE_LIST[8],
                self::EMPLOYEE_LIST[9],
            ],
            $this->crudClient->read('Employees')
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function read_ShouldFilter()
    {
        self::assertEquals(
            [
                self::EMPLOYEE_LIST[1],
                self::EMPLOYEE_LIST[8],
            ],
            $this->crudClient->read(
                'Employees',
                ['TitleOfCourtesy' => 'Ms.', 'City' => 'Seattle']
            )
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function read_ShouldOrder()
    {
        self::assertEquals(
            [
                self::EMPLOYEE_LIST[2],
                self::EMPLOYEE_LIST[5],
                self::EMPLOYEE_LIST[6],
                self::EMPLOYEE_LIST[7],
                self::EMPLOYEE_LIST[4],
                self::EMPLOYEE_LIST[1],
                self::EMPLOYEE_LIST[8],
                self::EMPLOYEE_LIST[9],
                self::EMPLOYEE_LIST[3],
            ],
            $this->crudClient->read(
                'Employees',
                [],
                ['TitleOfCourtesy' => 'ASC', 'City' => 'DESC']
            )
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function read_ShouldLimit()
    {
        self::assertEquals(
            [
                self::EMPLOYEE_LIST[1],
                self::EMPLOYEE_LIST[2],
                self::EMPLOYEE_LIST[3],
                self::EMPLOYEE_LIST[4],
            ],
            $this->crudClient->read(
                'Employees',
                [],
                [],
                4
            )
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function read_ShouldOffset()
    {
        self::assertEquals(
            [
                self::EMPLOYEE_LIST[6],
                self::EMPLOYEE_LIST[7],
            ],
            $this->crudClient->read(
                'Employees',
                [],
                [],
                2,
                5
            )
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function update()
    {
        $this->crudClient->update('Employees', self::EMPLOYEE_C, ['EmployeeID' => '1']);
        self::assertEquals(
            [
                array_merge(self::EMPLOYEE_C, ['EmployeeID' => '1']),
            ],
            $this->crudClient->read('Employees', ['EmployeeID' => '1'])
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function delete_DeletesOneRecord()
    {
        $this->crudClient->delete('Employees', ['EmployeeID' => '1']);
        self::assertEquals(
            [],
            $this->crudClient->read('Employees', ['EmployeeID' => '1'])
        );
    }

    /**
     * @test
     *
     * @small
     */
    public function delete_DeletesSeveralRecords()
    {
        $this->crudClient->delete('Employees', ['EmployeeID' => ['1', '2']]);
        self::assertEquals(
            [],
            $this->crudClient->read('Employees', ['EmployeeID' => ['1', '2']])
        );
    }

    const EMPLOYEE_LIST = [
        1 => [
            'EmployeeID' => '1',
            'LastName' => 'Davolio',
            'FirstName' => 'Nancy',
            'Title' => 'Sales Representative',
            'TitleOfCourtesy' => 'Ms.',
            'BirthDate' => '1948-12-08 00:00:00',
            'HireDate' => '1992-05-01 00:00:00',
            'Address' => '507 - 20th Ave. E.Apt. 2A',
            'City' => 'Seattle',
            'Region' => 'WA',
            'PostalCode' => '98122',
            'Country' => 'USA',
            'HomePhone' => '(206) 555-9857',
            'Extension' => '5467',
            'Photo' => '1.jpg',
            'Notes' => 'Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.',
            'ReportsTo' => '2',
            'PhotoPath' => 'http://accweb/emmployees/davolio.bmp',
            'Salary' => '2954.55',
        ],
        2 => [
            'EmployeeID' => '2',
            'LastName' => 'Fuller',
            'FirstName' => 'Andrew',
            'Title' => 'Vice President, Sales',
            'TitleOfCourtesy' => 'Dr.',
            'BirthDate' => '1952-02-19 00:00:00',
            'HireDate' => '1992-08-14 00:00:00',
            'Address' => '908 W. Capital Way',
            'City' => 'Tacoma',
            'Region' => 'WA',
            'PostalCode' => '98401',
            'Country' => 'USA',
            'HomePhone' => '(206) 555-9482',
            'Extension' => '3457',
            'Photo' => '2.jpg',
            'Notes' => 'Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.',
            'ReportsTo' => null,
            'PhotoPath' => 'http://accweb/emmployees/fuller.bmp',
            'Salary' => '2254.49',
        ],
        3 => [
            'EmployeeID' => '3',
            'LastName' => 'Leverling',
            'FirstName' => 'Janet',
            'Title' => 'Sales Representative',
            'TitleOfCourtesy' => 'Ms.',
            'BirthDate' => '1963-08-30 00:00:00',
            'HireDate' => '1992-04-01 00:00:00',
            'Address' => '722 Moss Bay Blvd.',
            'City' => 'Kirkland',
            'Region' => 'WA',
            'PostalCode' => '98033',
            'Country' => 'USA',
            'HomePhone' => '(206) 555-3412',
            'Extension' => '3355',
            'Photo' => '3.jpg',
            'Notes' => 'Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.',
            'ReportsTo' => '2',
            'PhotoPath' => 'http://accweb/emmployees/leverling.bmp',
            'Salary' => '3119.15',
        ],
        4 => [
            'EmployeeID' => '4',
            'LastName' => 'Peacock',
            'FirstName' => 'Margaret',
            'Title' => 'Sales Representative',
            'TitleOfCourtesy' => 'Mrs.',
            'BirthDate' => '1937-09-19 00:00:00',
            'HireDate' => '1993-05-03 00:00:00',
            'Address' => '4110 Old Redmond Rd.',
            'City' => 'Redmond',
            'Region' => 'WA',
            'PostalCode' => '98052',
            'Country' => 'USA',
            'HomePhone' => '(206) 555-8122',
            'Extension' => '5176',
            'Photo' => '4.jpg',
            'Notes' => 'Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.',
            'ReportsTo' => '2',
            'PhotoPath' => 'http://accweb/emmployees/peacock.bmp',
            'Salary' => '1861.08',
        ],
        5 => [
            'EmployeeID' => '5',
            'LastName' => 'Buchanan',
            'FirstName' => 'Steven',
            'Title' => 'Sales Manager',
            'TitleOfCourtesy' => 'Mr.',
            'BirthDate' => '1955-03-04 00:00:00',
            'HireDate' => '1993-10-17 00:00:00',
            'Address' => '14 Garrett Hill',
            'City' => 'London',
            'Region' => null,
            'PostalCode' => 'SW1 8JR',
            'Country' => 'UK',
            'HomePhone' => '(71) 555-4848',
            'Extension' => '3453',
            'Photo' => '5.jpg',
            'Notes' => 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.',
            'ReportsTo' => '2',
            'PhotoPath' => 'http://accweb/emmployees/buchanan.bmp',
            'Salary' => '1744.21',
        ],
        6 => [
            'EmployeeID' => '6',
            'LastName' => 'Suyama',
            'FirstName' => 'Michael',
            'Title' => 'Sales Representative',
            'TitleOfCourtesy' => 'Mr.',
            'BirthDate' => '1963-07-02 00:00:00',
            'HireDate' => '1993-10-17 00:00:00',
            'Address' => 'Coventry House Miner Rd.',
            'City' => 'London',
            'Region' => null,
            'PostalCode' => 'EC2 7JR',
            'Country' => 'UK',
            'HomePhone' => '(71) 555-7773',
            'Extension' => '428',
            'Photo' => '6.jpg',
            'Notes' => 'Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.',
            'ReportsTo' => '5',
            'PhotoPath' => 'http://accweb/emmployees/davolio.bmp',
            'Salary' => '2004.07',
        ],
        7 => [
            'EmployeeID' => '7',
            'LastName' => 'King',
            'FirstName' => 'Robert',
            'Title' => 'Sales Representative',
            'TitleOfCourtesy' => 'Mr.',
            'BirthDate' => '1960-05-29 00:00:00',
            'HireDate' => '1994-01-02 00:00:00',
            'Address' => 'Edgeham Hollow Winchester Way',
            'City' => 'London',
            'Region' => null,
            'PostalCode' => 'RG1 9SP',
            'Country' => 'UK',
            'HomePhone' => '(71) 555-5598',
            'Extension' => '465',
            'Photo' => '7.jpg',
            'Notes' => 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.',
            'ReportsTo' => '5',
            'PhotoPath' => 'http://accweb/emmployees/davolio.bmp',
            'Salary' => '1991.55',
        ],
        8 => [
            'EmployeeID' => '8',
            'LastName' => 'Callahan',
            'FirstName' => 'Laura',
            'Title' => 'Inside Sales Coordinator',
            'TitleOfCourtesy' => 'Ms.',
            'BirthDate' => '1958-01-09 00:00:00',
            'HireDate' => '1994-03-05 00:00:00',
            'Address' => '4726 - 11th Ave. N.E.',
            'City' => 'Seattle',
            'Region' => 'WA',
            'PostalCode' => '98105',
            'Country' => 'USA',
            'HomePhone' => '(206) 555-1189',
            'Extension' => '2344',
            'Photo' => '8.jpg',
            'Notes' => 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.',
            'ReportsTo' => '2',
            'PhotoPath' => 'http://accweb/emmployees/davolio.bmp',
            'Salary' => '2100.5',
        ],
        9 => [
            'EmployeeID' => '9',
            'LastName' => 'Dodsworth',
            'FirstName' => 'Anne',
            'Title' => 'Sales Representative',
            'TitleOfCourtesy' => 'Ms.',
            'BirthDate' => '1966-01-27 00:00:00',
            'HireDate' => '1994-11-15 00:00:00',
            'Address' => '7 Houndstooth Rd.',
            'City' => 'London',
            'Region' => null,
            'PostalCode' => 'WG2 7LT',
            'Country' => 'UK',
            'HomePhone' => '(71) 555-4444',
            'Extension' => '452',
            'Photo' => '9.jpg',
            'Notes' => 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.',
            'ReportsTo' => '5',
            'PhotoPath' => 'http://accweb/emmployees/davolio.bmp',
            'Salary' => '2333.33',
        ],
    ];

    const EMPLOYEE_A = [
        'EmployeeID' => '10',
        'LastName' => 'Architecture',
        'FirstName' => 'Lean',
        'Title' => 'Sales Representative',
        'TitleOfCourtesy' => 'Ms.',
        'BirthDate' => '1966-01-27 00:00:00',
        'HireDate' => '1994-11-15 00:00:00',
        'Address' => '7 Houndstooth Rd.',
        'City' => 'London',
        'Region' => null,
        'PostalCode' => 'WG2 7LT',
        'Country' => 'UK',
        'HomePhone' => '(71) 555-4444',
        'Extension' => '452',
        'Photo' => '10.jpg',
        'Notes' => '',
        'ReportsTo' => '5',
        'PhotoPath' => 'http://accweb/emmployees/architecture.bmp',
        'Salary' => '2333.33',
    ];

    const EMPLOYEE_B = [
        'EmployeeID' => '11',
        'LastName' => 'Cosburn',
        'FirstName' => 'Joan',
        'Title' => 'Sales Representative',
        'TitleOfCourtesy' => 'Ms.',
        'BirthDate' => '1966-01-27 00:00:00',
        'HireDate' => '1994-11-15 00:00:00',
        'Address' => '7 Houndstooth Rd.',
        'City' => 'London',
        'Region' => null,
        'PostalCode' => 'WG2 7LT',
        'Country' => 'UK',
        'HomePhone' => '(71) 555-4444',
        'Extension' => '452',
        'Photo' => '10.jpg',
        'Notes' => '',
        'ReportsTo' => '5',
        'PhotoPath' => 'http://accweb/emmployees/Cosburn.bmp',
        'Salary' => '2333.33',
    ];

    const EMPLOYEE_C = [
        'LastName' => 'Cosburn',
        'FirstName' => 'Joan',
        'Title' => 'Sales Representative',
        'TitleOfCourtesy' => 'Ms.',
        'BirthDate' => '1966-01-27 00:00:00',
        'HireDate' => '1994-11-15 00:00:00',
        'Address' => '7 Houndstooth Rd.',
        'City' => 'London',
        'Region' => null,
        'PostalCode' => 'WG2 7LT',
        'Country' => 'UK',
        'HomePhone' => '(71) 555-4444',
        'Extension' => '452',
        'Photo' => '10.jpg',
        'Notes' => '',
        'ReportsTo' => '5',
        'PhotoPath' => 'http://accweb/emmployees/Cosburn.bmp',
        'Salary' => '2333.33',
    ];
}
