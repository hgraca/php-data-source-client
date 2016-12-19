
DROP TABLE IF EXISTS `Categories`;
CREATE TABLE `Categories` (
	`CategoryID` INTEGER NOT NULL,
	`CategoryName` TEXT NOT NULL,
	`Description` TEXT,
	`Picture` TEXT DEFAULT NULL,
	CONSTRAINT `CATEGORIES_PK` PRIMARY KEY (`CategoryID`)
);
INSERT INTO `Categories` (`CategoryID`,`CategoryName`,`Description`,`Picture`) VALUES
(1,'Beverages','Soft drinks, coffees, teas, beers, and ales','1.jpg'),
(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings','2.jpg'),
(3,'Confections','Desserts, candies, and sweet breads','3.jpg'),
(4,'Dairy Products','Cheeses','4.jpg'),
(5,'Grains/Cereals','Breads, crackers, pasta, and cereal','5.jpg'),
(6,'Meat/Poultry','Prepared meats','6.jpg'),
(7,'Produce','Dried fruit and bean curd','7.jpg'),
(8,'Seafood','Seaweed and fish','8.jpg');

DROP TABLE IF EXISTS `CustomerCustomerDemo`;
CREATE TABLE `CustomerCustomerDemo` (
	`CustomerID` INTEGER NOT NULL,
	`CustomerTypeID` INTEGER NOT NULL,
	CONSTRAINT `FK_CustomerCustomerDemo_CustomerDemographics` FOREIGN KEY (`CustomerTypeID`) REFERENCES `CustomerDemographics`(`CustomerTypeID`),
	CONSTRAINT `FK_CustomerCustomerDemo_Customers` FOREIGN KEY (`CustomerID`) REFERENCES `Customers`(id)
);

DROP TABLE IF EXISTS `CustomerDemographics`;
CREATE TABLE `CustomerDemographics` (
	`CustomerTypeID` INTEGER NOT NULL,
	`Key` TEXT NOT NULL,
	`CustomerDesc` TEXT,
	CONSTRAINT `CUSTOMERDEMOGRAPHICS_PK` PRIMARY KEY (`CustomerTypeID`)
);

DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers` (
	`id` INTEGER NOT NULL,
	`key` TEXT NOT NULL,
	`companyName` TEXT NOT NULL,
	`contactName` TEXT DEFAULT NULL,
	`contactTitle` TEXT DEFAULT NULL,
	`address` TEXT DEFAULT NULL,
	`city` TEXT DEFAULT NULL,
	`region` TEXT DEFAULT NULL,
	`postalCode` TEXT DEFAULT NULL,
	`country` TEXT DEFAULT NULL,
	`phone` TEXT DEFAULT NULL,
	`fax` TEXT DEFAULT NULL,
	CONSTRAINT `CUSTOMERS_PK` PRIMARY KEY (id)
);
INSERT INTO `Customers` (`id`,`key`,`companyName`,`contactName`,`contactTitle`,`address`,`city`,`region`,`postalCode`,`country`,`phone`,`fax`) VALUES
(1,'ALFKI','Alfreds Futterkiste','Maria Anders','Sales Representative','Obere Str. 57','Berlin',NULL,'12209','Germany','030-0074321','030-0076545'),
(2,'ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','Owner','Avda. de la Constitucin 2222','Mxico D.F.',NULL,'05021','Mexico','(5) 555-4729','(5) 555-3745'),
(3,'ANTON','Antonio Moreno Taquera','Antonio Moreno','Owner','Mataderos  2312','Mxico D.F.',NULL,'05023','Mexico','(5) 555-3932',NULL),
(4,'AROUT','Around the Horn','Thomas Hardy','Sales Representative','120 Hanover Sq.','London',NULL,'WA1 1DP','UK','(171) 555-7788','(171) 555-6750'),
(5,'BERGS','Berglunds snabbkp','Christina Berglund','Order Administrator','Berguvsvgen  8','Lule',NULL,'S-958 22','Sweden','0921-12 34 65','0921-12 34 67'),
(6,'BLAUS','Blauer See Delikatessen','Hanna Moos','Sales Representative','Forsterstr. 57','Mannheim',NULL,'68306','Germany','0621-08460','0621-08924'),
(7,'BLONP','Blondesddsl pre et fils','Frdrique Citeaux','Marketing Manager','24, place Klber','Strasbourg',NULL,'67000','France','88.60.15.31','88.60.15.32'),
(8,'BOLID','Blido Comidas preparadas','Martn Sommer','Owner','C/ Araquil, 67','Madrid',NULL,'28023','Spain','(91) 555 22 82','(91) 555 91 99'),
(9,'BONAP','Bon app''','Laurence Lebihan','Owner','12, rue des Bouchers','Marseille',NULL,'13008','France','91.24.45.40','91.24.45.41'),
(10,'BOTTM','Bottom-Dollar Markets','Elizabeth Lincoln','Accounting Manager','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada','(604) 555-4729','(604) 555-3745'),
(11,'BSBEV','B''s Beverages','Victoria Ashworth','Sales Representative','Fauntleroy Circus','London',NULL,'EC2 5NT','UK','(171) 555-1212',NULL),
(12,'CACTU','Cactus Comidas para llevar','Patricio Simpson','Sales Agent','Cerrito 333','Buenos Aires',NULL,'1010','Argentina','(1) 135-5555','(1) 135-4892'),
(13,'CENTC','Centro comercial Moctezuma','Francisco Chang','Marketing Manager','Sierras de Granada 9993','Mxico D.F.',NULL,'05022','Mexico','(5) 555-3392','(5) 555-7293'),
(14,'CHOPS','Chop-suey Chinese','Yang Wang','Owner','Hauptstr. 29','Bern',NULL,'3012','Switzerland','0452-076545',NULL),
(15,'COMMI','Comrcio Mineiro','Pedro Afonso','Sales Associate','Av. dos Lusadas, 23','Sao Paulo','SP','05432-043','Brazil','(11) 555-7647',NULL),
(16,'CONSH','Consolidated Holdings','Elizabeth Brown','Sales Representative','Berkeley Gardens 12  Brewery','London',NULL,'WX1 6LT','UK','(171) 555-2282','(171) 555-9199'),
(17,'DRACD','Drachenblut Delikatessen','Sven Ottlieb','Order Administrator','Walserweg 21','Aachen',NULL,'52066','Germany','0241-039123','0241-059428'),
(18,'DUMON','Du monde entier','Janine Labrune','Owner','67, rue des Cinquante Otages','Nantes',NULL,'44000','France','40.67.88.88','40.67.89.89'),
(19,'EASTC','Eastern Connection','Ann Devon','Sales Agent','35 King George','London',NULL,'WX3 6FW','UK','(171) 555-0297','(171) 555-3373'),
(20,'ERNSH','Ernst Handel','Roland Mendel','Sales Manager','Kirchgasse 6','Graz',NULL,'8010','Austria','7675-3425','7675-3426'),
(21,'FAMIA','Familia Arquibaldo','Aria Cruz','Marketing Assistant','Rua Ors, 92','Sao Paulo','SP','05442-030','Brazil','(11) 555-9857',NULL),
(22,'FISSA','FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Accounting Manager','C/ Moralzarzal, 86','Madrid',NULL,'28034','Spain','(91) 555 94 44','(91) 555 55 93'),
(23,'FOLIG','Folies gourmandes','Martine Ranc','Assistant Sales Agent','184, chausse de Tournai','Lille',NULL,'59000','France','20.16.10.16','20.16.10.17'),
(24,'FOLKO','Folk och f HB','Maria Larsson','Owner','kergatan 24','Brcke',NULL,'S-844 67','Sweden','0695-34 67 21',NULL),
(25,'FRANK','Frankenversand','Peter Franken','Marketing Manager','Berliner Platz 43','Mnchen',NULL,'80805','Germany','089-0877310','089-0877451'),
(26,'FRANR','France restauration','Carine Schmitt','Marketing Manager','54, rue Royale','Nantes',NULL,'44000','France','40.32.21.21','40.32.21.20'),
(27,'FRANS','Franchi S.p.A.','Paolo Accorti','Sales Representative','Via Monte Bianco 34','Torino',NULL,'10100','Italy','011-4988260','011-4988261'),
(28,'FURIB','Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Sales Manager','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal','(1) 354-2534','(1) 354-2535'),
(29,'GALED','Galera del gastrnomo','Eduardo Saavedra','Marketing Manager','Rambla de Catalua, 23','Barcelona',NULL,'08022','Spain','(93) 203 4560','(93) 203 4561'),
(30,'GODOS','Godos Cocina Tpica','Jos Pedro Freyre','Sales Manager','C/ Romero, 33','Sevilla',NULL,'41101','Spain','(95) 555 82 82',NULL),
(31,'GOURL','Gourmet Lanchonetes','Andr Fonseca','Sales Associate','Av. Brasil, 442','Campinas','SP','04876-786','Brazil','(11) 555-9482',NULL),
(32,'GREAL','Great Lakes Food Market','Howard Snyder','Marketing Manager','2732 Baker Blvd.','Eugene','OR','97403','USA','(503) 555-7555',NULL),
(33,'GROSR','GROSELLA-Restaurante','Manuel Pereira','Owner','5 Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela','(2) 283-2951','(2) 283-3397'),
(34,'HANAR','Hanari Carnes','Mario Pontes','Accounting Manager','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil','(21) 555-0091','(21) 555-8765'),
(35,'HILAA','HILARION-Abastos','Carlos Hernndez','Sales Representative','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela','(5) 555-1340','(5) 555-1948'),
(36,'HUNGC','Hungry Coyote Import Store','Yoshi Latimer','Sales Representative','City Center Plaza 516 Main St.','Elgin','OR','97827','USA','(503) 555-6874','(503) 555-2376'),
(37,'HUNGO','Hungry Owl All-Night Grocers','Patricia McKenna','Sales Associate','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland','2967 542','2967 3333'),
(38,'ISLAT','Island Trading','Helen Bennett','Marketing Manager','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK','(198) 555-8888',NULL),
(39,'KOENE','Kniglich Essen','Philip Cramer','Sales Associate','Maubelstr. 90','Brandenburg',NULL,'14776','Germany','0555-09876',NULL),
(40,'LACOR','La corne d''abondance','Daniel Tonini','Sales Representative','67, avenue de l''Europe','Versailles',NULL,'78000','France','30.59.84.10','30.59.85.11'),
(41,'LAMAI','La maison d''Asie','Annette Roulet','Sales Manager','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France','61.77.61.10','61.77.61.11'),
(42,'LAUGB','Laughing Bacchus Wine Cellars','Yoshi Tannamuri','Marketing Assistant','1900 Oak St.','Vancouver','BC','V3F 2K1','Canada','(604) 555-3392','(604) 555-7293'),
(43,'LAZYK','Lazy K Kountry Store','John Steel','Marketing Manager','12 Orchestra Terrace','Walla Walla','WA','99362','USA','(509) 555-7969','(509) 555-6221'),
(44,'LEHMS','Lehmanns Marktstand','Renate Messner','Sales Representative','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany','069-0245984','069-0245874'),
(45,'LETSS','Let''s Stop N Shop','Jaime Yorres','Owner','87 Polk St. Suite 5','San Francisco','CA','94117','USA','(415) 555-5938',NULL),
(46,'LILAS','LILA-Supermercado','Carlos Gonzlez','Accounting Manager','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela','(9) 331-6954','(9) 331-7256'),
(47,'LINOD','LINO-Delicateses','Felipe Izquierdo','Owner','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela','(8) 34-56-12','(8) 34-93-93'),
(48,'LONEP','Lonesome Pine Restaurant','Fran Wilson','Sales Manager','89 Chiaroscuro Rd.','Portland','OR','97219','USA','(503) 555-9573','(503) 555-9646'),
(49,'MAGAA','Magazzini Alimentari Riuniti','Giovanni Rovelli','Marketing Manager','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy','035-640230','035-640231'),
(50,'MAISD','Maison Dewey','Catherine Dewey','Sales Agent','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium','(02) 201 24 67','(02) 201 24 68'),
(51,'MEREP','Mre Paillarde','Jean Fresnire','Marketing Assistant','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada','(514) 555-8054','(514) 555-8055'),
(52,'MORGK','Morgenstern Gesundkost','Alexander Feuer','Marketing Assistant','Heerstr. 22','Leipzig',NULL,'04179','Germany','0342-023176',NULL),
(53,'NORTS','North/South','Simon Crowther','Sales Associate','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK','(171) 555-7733','(171) 555-2530'),
(54,'OCEAN','Ocano Atlntico Ltda.','Yvonne Moncada','Sales Agent','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina','(1) 135-5333','(1) 135-5535'),
(55,'OLDWO','Old World Delicatessen','Rene Phillips','Sales Representative','2743 Bering St.','Anchorage','AK','99508','USA','(907) 555-7584','(907) 555-2880'),
(56,'OTTIK','Ottilies Kseladen','Henriette Pfalzheim','Owner','Mehrheimerstr. 369','Kln',NULL,'50739','Germany','0221-0644327','0221-0765721'),
(57,'PARIS','Paris spcialits','Marie Bertrand','Owner','265, boulevard Charonne','Paris',NULL,'75012','France','(1) 42.34.22.66','(1) 42.34.22.77'),
(58,'PERIC','Pericles Comidas clsicas','Guillermo Fernndez','Sales Representative','Calle Dr. Jorge Cash 321','Mxico D.F.',NULL,'05033','Mexico','(5) 552-3745','(5) 545-3745'),
(59,'PICCO','Piccolo und mehr','Georg Pipps','Sales Manager','Geislweg 14','Salzburg',NULL,'5020','Austria','6562-9722','6562-9723'),
(60,'PRINI','Princesa Isabel Vinhos','Isabel de Castro','Sales Representative','Estrada da sade n. 58','Lisboa',NULL,'1756','Portugal','(1) 356-5634',NULL),
(61,'QUEDE','Que Delcia','Bernardo Batista','Accounting Manager','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil','(21) 555-4252','(21) 555-4545'),
(62,'QUEEN','Queen Cozinha','Lcia Carvalho','Marketing Assistant','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil','(11) 555-1189',NULL),
(63,'QUICK','QUICK-Stop','Horst Kloss','Accounting Manager','Taucherstrae 10','Cunewalde',NULL,'01307','Germany','0372-035188',NULL),
(64,'RANCH','Rancho grande','Sergio Gutirrez','Sales Representative','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina','(1) 123-5555','(1) 123-5556'),
(65,'RATTC','Rattlesnake Canyon Grocery','Paula Wilson','Assistant Sales Representative','2817 Milton Dr.','Albuquerque','NM','87110','USA','(505) 555-5939','(505) 555-3620'),
(66,'REGGC','Reggiani Caseifici','Maurizio Moroni','Sales Associate','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy','0522-556721','0522-556722'),
(67,'RICAR','Ricardo Adocicados','Janete Limeira','Assistant Sales Agent','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil','(21) 555-3412',NULL),
(68,'RICSU','Richter Supermarkt','Michael Holz','Sales Manager','Grenzacherweg 237','Genve',NULL,'1203','Switzerland','0897-034214',NULL),
(69,'ROMEY','Romero y tomillo','Alejandra Camino','Accounting Manager','Gran Va, 1','Madrid',NULL,'28001','Spain','(91) 745 6200','(91) 745 6210'),
(70,'SANTG','Sant Gourmet','Jonas Bergulfsen','Owner','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway','07-98 92 35','07-98 92 47'),
(71,'SAVEA','Save-a-lot Markets','Jose Pavarotti','Sales Representative','187 Suffolk Ln.','Boise','ID','83720','USA','(208) 555-8097',NULL),
(72,'SEVES','Seven Seas Imports','Hari Kumar','Sales Manager','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK','(171) 555-1717','(171) 555-5646'),
(73,'SIMOB','Simons bistro','Jytte Petersen','Owner','Vinbltet 34','Kobenhavn',NULL,'1734','Denmark','31 12 34 56','31 13 35 57'),
(74,'SPECD','Spcialits du monde','Dominique Perrier','Marketing Manager','25, rue Lauriston','Paris',NULL,'75016','France','(1) 47.55.60.10','(1) 47.55.60.20'),
(75,'SPLIR','Split Rail Beer & Ale','Art Braunschweiger','Sales Manager','P.O. Box 555','Lander','WY','82520','USA','(307) 555-4680','(307) 555-6525'),
(76,'SUPRD','Suprmes dlices','Pascale Cartrain','Accounting Manager','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium','(071) 23 67 22 20','(071) 23 67 22 21'),
(77,'THEBI','The Big Cheese','Liz Nixon','Marketing Manager','89 Jefferson Way Suite 2','Portland','OR','97201','USA','(503) 555-3612',NULL),
(78,'THECR','The Cracker Box','Liu Wong','Marketing Assistant','55 Grizzly Peak Rd.','Butte','MT','59801','USA','(406) 555-5834','(406) 555-8083'),
(79,'TOMSP','Toms Spezialitten','Karin Josephs','Marketing Manager','Luisenstr. 48','Mnster',NULL,'44087','Germany','0251-031259','0251-035695'),
(80,'TORTU','Tortuga Restaurante','Miguel Angel Paolino','Owner','Avda. Azteca 123','Mxico D.F.',NULL,'05033','Mexico','(5) 555-2933',NULL),
(81,'TRADH','Tradio Hipermercados','Anabela Domingues','Sales Representative','Av. Ins de Castro, 414','Sao Paulo','SP','05634-030','Brazil','(11) 555-2167','(11) 555-2168'),
(82,'TRAIH','Trail''s Head Gourmet Provisioners','Helvetius Nagy','Sales Associate','722 DaVinci Blvd.','Kirkland','WA','98034','USA','(206) 555-8257','(206) 555-2174'),
(83,'VAFFE','Vaffeljernet','Palle Ibsen','Sales Manager','Smagsloget 45','rhus',NULL,'8200','Denmark','86 21 32 43','86 22 33 44'),
(84,'Val2 ','IT','Val2','IT',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(85,'VALON','IT','Valon Hoti','IT',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(86,'VICTE','Victuailles en stock','Mary Saveley','Sales Agent','2, rue du Commerce','Lyon',NULL,'69004','France','78.32.54.86','78.32.54.87'),
(87,'VINET','Vins et alcools Chevalier','Paul Henriot','Accounting Manager','59 rue de l''Abbaye','Reims',NULL,'51100','France','26.47.15.10','26.47.15.11'),
(88,'WANDK','Die Wandernde Kuh','Rita Mller','Sales Representative','Adenauerallee 900','Stuttgart',NULL,'70563','Germany','0711-020361','0711-035428'),
(89,'WARTH','Wartian Herkku','Pirkko Koskitalo','Accounting Manager','Torikatu 38','Oulu',NULL,'90110','Finland','981-443655','981-443655'),
(90,'WELLI','Wellington Importadora','Paula Parente','Sales Manager','Rua do Mercado, 12','Resende','SP','08737-363','Brazil','(14) 555-8122',NULL),
(91,'WHITC','White Clover Markets','Karl Jablonski','Owner','305 - 14th Ave. S. Suite 3B','Seattle','WA','98128','USA','(206) 555-4112','(206) 555-4115'),
(92,'WILMK','Wilman Kala','Matti Karttunen','Owner/Marketing Assistant','Keskuskatu 45','Helsinki',NULL,'21240','Finland','90-224 8858','90-224 8858'),
(93,'WOLZA','Wolski  Zajazd','Zbyszek Piestrzeniewicz','Owner','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland','(26) 642-7012','(26) 642-7012');

DROP TABLE IF EXISTS `EmployeeTerritories`;
CREATE TABLE `EmployeeTerritories` (
	`EmployeeID` INTEGER NOT NULL,
	`TerritoryID` INTEGER NOT NULL,
	CONSTRAINT `FK_EmployeeTerritories_Employees` FOREIGN KEY (`EmployeeID`) REFERENCES `Employees`(`EmployeeID`),
	CONSTRAINT `FK_EmployeeTerritories_Territories` FOREIGN KEY (`TerritoryID`) REFERENCES `Territories`(`TerritoryID`)
);
INSERT INTO `EmployeeTerritories` (`EmployeeID`,`TerritoryID`) VALUES(2,1581),(2,1730),(2,1833),(2,2116),(2,2139),(2,2184),(5,2903),(9,3049),(9,3801),(1,6897),(5,7960),(5,8837),(5,10019),(5,10038),(5,11747),(5,14450),(8,19428),(1,19713),(4,20852),(4,27403),(4,27511),(3,30346),(3,31406),(3,32859),(3,33607),(2,40222),(8,44122),(8,45839),(9,48075),(9,48084),(9,48304),(8,53404),(9,55113),(9,55439),(7,60179),(7,60601),(7,80202),(7,80909),(6,85014),(6,85251),(7,90405),(7,94025),(7,94105),(7,95008),(7,95054),(7,95060),(6,98004),(6,98052),(6,98104);

DROP TABLE IF EXISTS `Employees`;
CREATE TABLE `Employees` (
	`EmployeeID` INTEGER NOT NULL,
	`LastName` TEXT NOT NULL,
	`FirstName` TEXT NOT NULL,
	`Title` TEXT DEFAULT NULL,
	`TitleOfCourtesy` TEXT DEFAULT NULL,
	`BirthDate` TEXT DEFAULT NULL,
	`HireDate` TEXT DEFAULT NULL,
	`Address` TEXT DEFAULT NULL,
	`City` TEXT DEFAULT NULL,
	`Region` TEXT DEFAULT NULL,
	`PostalCode` TEXT DEFAULT NULL,
	`Country` TEXT DEFAULT NULL,
	`HomePhone` TEXT DEFAULT NULL,
	`Extension` TEXT DEFAULT NULL,
	`Photo` TEXT DEFAULT NULL,
	`Notes` TEXT NOT NULL,
	`ReportsTo` INTEGER DEFAULT NULL,
	`PhotoPath` TEXT DEFAULT NULL,
	`Salary` REAL DEFAULT NULL,
	CONSTRAINT `EMPLOYEES_PK` PRIMARY KEY (`EmployeeID`),
	CONSTRAINT `FK_Employees_Employees` FOREIGN KEY (`ReportsTo`) REFERENCES `Employees`(`EmployeeID`)
);
INSERT INTO `Employees` (`EmployeeID`,`LastName`,`FirstName`,`Title`,`TitleOfCourtesy`,`BirthDate`,`HireDate`,`Address`,`City`,`Region`,`PostalCode`,`Country`,`HomePhone`,`Extension`,`Photo`,`Notes`,`ReportsTo`,`PhotoPath`,`Salary`) VALUES
(1,'Davolio','Nancy','Sales Representative','Ms.','1948-12-08 00:00:00','1992-05-01 00:00:00','507 - 20th Ave. E.Apt. 2A','Seattle','WA','98122','USA','(206) 555-9857','5467','1.jpg','Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.',2,'http://accweb/emmployees/davolio.bmp',2954.55),
(2,'Fuller','Andrew','Vice President, Sales','Dr.','1952-02-19 00:00:00','1992-08-14 00:00:00','908 W. Capital Way','Tacoma','WA','98401','USA','(206) 555-9482','3457','2.jpg','Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.',NULL,'http://accweb/emmployees/fuller.bmp',2254.49),
(3,'Leverling','Janet','Sales Representative','Ms.','1963-08-30 00:00:00','1992-04-01 00:00:00','722 Moss Bay Blvd.','Kirkland','WA','98033','USA','(206) 555-3412','3355','3.jpg','Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.',2,'http://accweb/emmployees/leverling.bmp',3119.15),
(4,'Peacock','Margaret','Sales Representative','Mrs.','1937-09-19 00:00:00','1993-05-03 00:00:00','4110 Old Redmond Rd.','Redmond','WA','98052','USA','(206) 555-8122','5176','4.jpg','Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.',2,'http://accweb/emmployees/peacock.bmp',1861.08),
(5,'Buchanan','Steven','Sales Manager','Mr.','1955-03-04 00:00:00','1993-10-17 00:00:00','14 Garrett Hill','London',NULL,'SW1 8JR','UK','(71) 555-4848','3453','5.jpg','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.',2,'http://accweb/emmployees/buchanan.bmp',1744.21),
(6,'Suyama','Michael','Sales Representative','Mr.','1963-07-02 00:00:00','1993-10-17 00:00:00','Coventry House Miner Rd.','London',NULL,'EC2 7JR','UK','(71) 555-7773','428','6.jpg','Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.',5,'http://accweb/emmployees/davolio.bmp',2004.07),
(7,'King','Robert','Sales Representative','Mr.','1960-05-29 00:00:00','1994-01-02 00:00:00','Edgeham Hollow Winchester Way','London',NULL,'RG1 9SP','UK','(71) 555-5598','465','7.jpg','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.',5,'http://accweb/emmployees/davolio.bmp',1991.55),
(8,'Callahan','Laura','Inside Sales Coordinator','Ms.','1958-01-09 00:00:00','1994-03-05 00:00:00','4726 - 11th Ave. N.E.','Seattle','WA','98105','USA','(206) 555-1189','2344','8.jpg','Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.',2,'http://accweb/emmployees/davolio.bmp',2100.5),
(9,'Dodsworth','Anne','Sales Representative','Ms.','1966-01-27 00:00:00','1994-11-15 00:00:00','7 Houndstooth Rd.','London',NULL,'WG2 7LT','UK','(71) 555-4444','452','9.jpg','Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.',5,'http://accweb/emmployees/davolio.bmp',2333.33);

DROP TABLE IF EXISTS `Order Details`;
CREATE TABLE `Order Details` (
	`OrderID` INTEGER NOT NULL,
	`ProductID` INTEGER NOT NULL,
	`UnitPrice` NUMERIC NOT NULL DEFAULT '0.0000',
	`Quantity` INTEGER NOT NULL DEFAULT '1',
	`Discount` REAL NOT NULL DEFAULT '0',
	CONSTRAINT `FK_Order Details_Orders` FOREIGN KEY (`OrderID`) REFERENCES `Orders`(`OrderID`),
	CONSTRAINT `FK_Order Details_Products` FOREIGN KEY (`ProductID`) REFERENCES `Products`(`ProductID`)
);
INSERT INTO `Order Details` (`OrderID`,`ProductID`,`UnitPrice`,`Quantity`,`Discount`) VALUES
(10248,11,14.0000,12,0.0),(10248,42,9.8000,10,0.0),(10248,72,34.8000,5,0.0),(10249,14,18.6000,9,0.0),(10249,51,42.4000,40,0.0),(10250,41,7.7000,10,0.0),(10250,51,42.4000,35,0.0),(10250,65,16.8000,15,0.0),(10251,22,16.8000,6,0.0),(10251,57,15.6000,15,0.0),(10251,65,16.8000,20,0.0),(10252,20,64.8000,40,0.0),(10252,33,2.0000,25,0.0),(10252,60,27.2000,40,0.0),(10253,31,10.0000,20,0.0),(10253,39,14.4000,42,0.0),(10253,49,16.0000,40,0.0),(10254,24,3.6000,15,0.0),(10254,55,19.2000,21,0.0),(10254,74,8.0000,21,0.0),(10255,2,15.2000,20,0.0),(10255,16,13.9000,35,0.0),(10255,36,15.2000,25,0.0),(10255,59,44.0000,30,0.0),(10256,53,26.2000,15,0.0),(10256,77,10.4000,12,0.0),(10257,27,35.1000,25,0.0),(10257,39,14.4000,6,0.0),(10257,77,10.4000,15,0.0),(10258,2,15.2000,50,0.0),(10258,5,17.0000,65,0.0),(10258,32,25.6000,6,0.0),(10259,21,8.0000,10,0.0),(10259,37,20.8000,1,0.0),(10260,41,7.7000,16,0.0),(10260,57,15.6000,50,0.0),(10260,62,39.4000,15,0.0),(10260,70,12.0000,21,0.0),(10261,21,8.0000,20,0.0),(10261,35,14.4000,20,0.0),(10262,5,17.0000,12,0.0),(10262,7,24.0000,15,0.0),(10262,56,30.4000,2,0.0),(10263,16,13.9000,60,0.0),(10263,24,3.6000,28,0.0),(10263,30,20.7000,60,0.0),(10263,74,8.0000,36,0.0),(10264,2,15.2000,35,0.0),(10264,41,7.7000,25,0.0),(10265,17,31.2000,30,0.0),(10265,70,12.0000,20,0.0),(10266,12,30.4000,12,0.0),(10267,40,14.7000,50,0.0),(10267,59,44.0000,70,0.0),(10267,76,14.4000,15,0.0),(10268,29,99.0000,10,0.0),(10268,72,27.8000,4,0.0),(10269,33,2.0000,60,0.0),(10269,72,27.8000,20,0.0),(10270,36,15.2000,30,0.0),(10270,43,36.8000,25,0.0),(10271,33,2.0000,24,0.0),(10272,20,64.8000,6,0.0),(10272,31,10.0000,40,0.0),(10272,72,27.8000,24,0.0),(10273,10,24.8000,24,0.0),(10273,31,10.0000,15,0.0),(10273,33,2.0000,20,0.0),(10273,40,14.7000,60,0.0),(10273,76,14.4000,33,0.0),(10274,71,17.2000,20,0.0),(10274,72,27.8000,7,0.0),(10275,24,3.6000,12,0.0),(10275,59,44.0000,6,0.0),(10276,10,24.8000,15,0.0),(10276,13,4.8000,10,0.0),(10277,28,36.4000,20,0.0),(10277,62,39.4000,12,0.0),(10278,44,15.5000,16,0.0),(10278,59,44.0000,15,0.0),(10278,63,35.1000,8,0.0),(10278,73,12.0000,25,0.0),(10279,17,31.2000,15,0.0),(10280,24,3.6000,12,0.0),(10280,55,19.2000,20,0.0),(10280,75,6.2000,30,0.0),(10281,19,7.3000,1,0.0),(10281,24,3.6000,6,0.0),(10281,35,14.4000,4,0.0),(10282,30,20.7000,6,0.0),(10282,57,15.6000,2,0.0),(10283,15,12.4000,20,0.0),(10283,19,7.3000,18,0.0),(10283,60,27.2000,35,0.0),(10283,72,27.8000,3,0.0),(10284,27,35.1000,15,0.0),(10284,44,15.5000,21,0.0),(10284,60,27.2000,20,0.0),(10284,67,11.2000,5,0.0),(10285,1,14.4000,45,0.0),(10285,40,14.7000,40,0.0),(10285,53,26.2000,36,0.0),(10286,35,14.4000,100,0.0),(10286,62,39.4000,40,0.0),(10287,16,13.9000,40,0.0),(10287,34,11.2000,20,0.0),(10287,46,9.6000,15,0.0),(10288,54,5.9000,10,0.0),(10288,68,10.0000,3,0.0),(10289,3,8.0000,30,0.0),(10289,64,26.6000,9,0.0),(10290,5,17.0000,20,0.0),(10290,29,99.0000,15,0.0),(10290,49,16.0000,15,0.0),(10290,77,10.4000,10,0.0),(10291,13,4.8000,20,0.0),(10291,44,15.5000,24,0.0),(10291,51,42.4000,2,0.0),(10292,20,64.8000,20,0.0),(10293,18,50.0000,12,0.0),(10293,24,3.6000,10,0.0),(10293,63,35.1000,5,0.0),(10293,75,6.2000,6,0.0),(10294,1,14.4000,18,0.0),(10294,17,31.2000,15,0.0),(10294,43,36.8000,15,0.0),(10294,60,27.2000,21,0.0),(10294,75,6.2000,6,0.0),(10295,56,30.4000,4,0.0),(10296,11,16.8000,12,0.0),(10296,16,13.9000,30,0.0),(10296,69,28.8000,15,0.0),(10297,39,14.4000,60,0.0),(10297,72,27.8000,20,0.0),(10298,2,15.2000,40,0.0),(10298,36,15.2000,40,0.0),(10298,59,44.0000,30,0.0),(10298,62,39.4000,15,0.0),(10299,19,7.3000,15,0.0),(10299,70,12.0000,20,0.0),(10300,66,13.6000,30,0.0),(10300,68,10.0000,20,0.0),(10301,40,14.7000,10,0.0),(10301,56,30.4000,20,0.0),(10302,17,31.2000,40,0.0),(10302,28,36.4000,28,0.0),(10302,43,36.8000,12,0.0),(10303,40,14.7000,40,0.0),(10303,65,16.8000,30,0.0),(10303,68,10.0000,15,0.0),(10304,49,16.0000,30,0.0),(10304,59,44.0000,10,0.0),(10304,71,17.2000,2,0.0),(10305,18,50.0000,25,0.0),(10305,29,99.0000,25,0.0),(10305,39,14.4000,30,0.0),(10306,30,20.7000,10,0.0),(10306,53,26.2000,10,0.0),(10306,54,5.9000,5,0.0),(10307,62,39.4000,10,0.0),(10307,68,10.0000,3,0.0),(10308,69,28.8000,1,0.0),(10308,70,12.0000,5,0.0),(10309,4,17.6000,20,0.0),(10309,6,20.0000,30,0.0),(10309,42,11.2000,2,0.0),(10309,43,36.8000,20,0.0),(10309,71,17.2000,3,0.0),(10310,16,13.9000,10,0.0),(10310,62,39.4000,5,0.0),(10311,42,11.2000,6,0.0),(10311,69,28.8000,7,0.0),(10312,28,36.4000,4,0.0),(10312,43,36.8000,24,0.0),(10312,53,26.2000,20,0.0),(10312,75,6.2000,10,0.0),(10313,36,15.2000,12,0.0),(10314,32,25.6000,40,0.0),(10314,58,10.6000,30,0.0),(10314,62,39.4000,25,0.0),(10315,34,11.2000,14,0.0),(10315,70,12.0000,30,0.0),(10316,41,7.7000,10,0.0),(10316,62,39.4000,70,0.0),(10317,1,14.4000,20,0.0),(10318,41,7.7000,20,0.0),(10318,76,14.4000,6,0.0),(10319,17,31.2000,8,0.0),(10319,28,36.4000,14,0.0),(10319,76,14.4000,30,0.0),(10320,71,17.2000,30,0.0),(10321,35,14.4000,10,0.0),(10322,52,5.6000,20,0.0),(10323,15,12.4000,5,0.0),(10323,25,11.2000,4,0.0),(10323,39,14.4000,4,0.0),(10324,16,13.9000,21,0.0),(10324,35,14.4000,70,0.0),(10324,46,9.6000,30,0.0),(10324,59,44.0000,40,0.0),(10324,63,35.1000,80,0.0),(10325,6,20.0000,6,0.0),(10325,13,4.8000,12,0.0),(10325,14,18.6000,9,0.0),(10325,31,10.0000,4,0.0),(10325,72,27.8000,40,0.0),(10326,4,17.6000,24,0.0),(10326,57,15.6000,16,0.0),(10326,75,6.2000,50,0.0),(10327,2,15.2000,25,0.0),(10327,11,16.8000,50,0.0),(10327,30,20.7000,35,0.0),(10327,58,10.6000,30,0.0),(10328,59,44.0000,9,0.0),(10328,65,16.8000,40,0.0),(10328,68,10.0000,10,0.0),(10329,19,7.3000,10,0.0),(10329,30,20.7000,8,0.0),(10329,38,210.8000,20,0.0),(10329,56,30.4000,12,0.0),(10330,26,24.9000,50,0.0),(10330,72,27.8000,25,0.0),(10331,54,5.9000,15,0.0),(10332,18,50.0000,40,0.0),(10332,42,11.2000,10,0.0),(10332,47,7.6000,16,0.0),(10333,14,18.6000,10,0.0),(10333,21,8.0000,10,0.0),(10333,71,17.2000,40,0.0),(10334,52,5.6000,8,0.0),(10334,68,10.0000,10,0.0),(10335,2,15.2000,7,0.0),(10335,31,10.0000,25,0.0),(10335,32,25.6000,6,0.0),(10335,51,42.4000,48,0.0),(10336,4,17.6000,18,0.0),(10337,23,7.2000,40,0.0),(10337,26,24.9000,24,0.0),(10337,36,15.2000,20,0.0),(10337,37,20.8000,28,0.0),(10337,72,27.8000,25,0.0),(10338,17,31.2000,20,0.0),(10338,30,20.7000,15,0.0),(10339,4,17.6000,10,0.0),(10339,17,31.2000,70,0.0),(10339,62,39.4000,28,0.0),(10340,18,50.0000,20,0.0),(10340,41,7.7000,12,0.0),(10340,43,36.8000,40,0.0),(10341,33,2.0000,8,0.0),(10341,59,44.0000,9,0.0),(10342,2,15.2000,24,0.0),(10342,31,10.0000,56,0.0),(10342,36,15.2000,40,0.0),(10342,55,19.2000,40,0.0),(10343,64,26.6000,50,0.0),(10343,68,10.0000,4,0.0),(10343,76,14.4000,15,0.0),(10344,4,17.6000,35,0.0),(10344,8,32.0000,70,0.0),(10345,8,32.0000,70,0.0),(10345,19,7.3000,80,0.0),(10345,42,11.2000,9,0.0),(10346,17,31.2000,36,0.0),(10346,56,30.4000,20,0.0),(10347,25,11.2000,10,0.0),(10347,39,14.4000,50,0.0),(10347,40,14.7000,4,0.0),(10347,75,6.2000,6,0.0),(10348,1,14.4000,15,0.0),(10348,23,7.2000,25,0.0),(10349,54,5.9000,24,0.0),(10350,50,13.0000,15,0.0),(10350,69,28.8000,18,0.0),(10351,38,210.8000,20,0.0),(10351,41,7.7000,13,0.0),(10351,44,15.5000,77,0.0),(10351,65,16.8000,10,0.0),(10352,24,3.6000,10,0.0),(10352,54,5.9000,20,0.0),(10353,11,16.8000,12,0.0),(10353,38,210.8000,50,0.0),(10354,1,14.4000,12,0.0),(10354,29,99.0000,4,0.0),(10355,24,3.6000,25,0.0),(10355,57,15.6000,25,0.0),(10356,31,10.0000,30,0.0),(10356,55,19.2000,12,0.0),(10356,69,28.8000,20,0.0),(10357,10,24.8000,30,0.0),(10357,26,24.9000,16,0.0),(10357,60,27.2000,8,0.0),(10358,24,3.6000,10,0.0),(10358,34,11.2000,10,0.0),(10358,36,15.2000,20,0.0),(10359,16,13.9000,56,0.0),(10359,31,10.0000,70,0.0),(10359,60,27.2000,80,0.0),(10360,28,36.4000,30,0.0),(10360,29,99.0000,35,0.0),(10360,38,210.8000,10,0.0),(10360,49,16.0000,35,0.0),(10360,54,5.9000,28,0.0),(10361,39,14.4000,54,0.0),(10361,60,27.2000,55,0.0),(10362,25,11.2000,50,0.0),(10362,51,42.4000,20,0.0),(10362,54,5.9000,24,0.0),(10363,31,10.0000,20,0.0),(10363,75,6.2000,12,0.0),(10363,76,14.4000,12,0.0),(10364,69,28.8000,30,0.0),(10364,71,17.2000,5,0.0),(10365,11,16.8000,24,0.0),(10366,65,16.8000,5,0.0),(10366,77,10.4000,5,0.0),(10367,34,11.2000,36,0.0),(10367,54,5.9000,18,0.0),(10367,65,16.8000,15,0.0),(10367,77,10.4000,7,0.0),(10368,21,8.0000,5,0.0),(10368,28,36.4000,13,0.0),(10368,57,15.6000,25,0.0),(10368,64,26.6000,35,0.0),(10369,29,99.0000,20,0.0),(10369,56,30.4000,18,0.0),(10370,1,14.4000,15,0.0),(10370,64,26.6000,30,0.0),(10370,74,8.0000,20,0.0),(10371,36,15.2000,6,0.0),(10372,20,64.8000,12,0.0),(10372,38,210.8000,40,0.0),(10372,60,27.2000,70,0.0),(10372,72,27.8000,42,0.0),(10373,58,10.6000,80,0.0),(10373,71,17.2000,50,0.0),(10374,31,10.0000,30,0.0),(10374,58,10.6000,15,0.0),(10375,14,18.6000,15,0.0),(10375,54,5.9000,10,0.0),(10376,31,10.0000,42,0.0),(10377,28,36.4000,20,0.0),(10377,39,14.4000,20,0.0),(10378,71,17.2000,6,0.0),(10379,41,7.7000,8,0.0),(10379,63,35.1000,16,0.0),(10379,65,16.8000,20,0.0),(10380,30,20.7000,18,0.0),(10380,53,26.2000,20,0.0),(10380,60,27.2000,6,0.0),(10380,70,12.0000,30,0.0),(10381,74,8.0000,14,0.0),(10382,5,17.0000,32,0.0),(10382,18,50.0000,9,0.0),(10382,29,99.0000,14,0.0),(10382,33,2.0000,60,0.0),(10382,74,8.0000,50,0.0),(10383,13,4.8000,20,0.0),(10383,50,13.0000,15,0.0),(10383,56,30.4000,20,0.0),(10384,20,64.8000,28,0.0),(10384,60,27.2000,15,0.0),(10385,7,24.0000,10,0.0),(10385,60,27.2000,20,0.0),(10385,68,10.0000,8,0.0),(10386,24,3.6000,15,0.0),(10386,34,11.2000,10,0.0),(10387,24,3.6000,15,0.0),(10387,28,36.4000,6,0.0),(10387,59,44.0000,12,0.0),(10387,71,17.2000,15,0.0),(10388,45,7.6000,15,0.0),(10388,52,5.6000,20,0.0),(10388,53,26.2000,40,0.0),(10389,10,24.8000,16,0.0),(10389,55,19.2000,15,0.0),(10389,62,39.4000,20,0.0),(10389,70,12.0000,30,0.0),(10390,31,10.0000,60,0.0),(10390,35,14.4000,40,0.0),(10390,46,9.6000,45,0.0),(10390,72,27.8000,24,0.0),(10391,13,4.8000,18,0.0),(10392,69,28.8000,50,0.0),(10393,2,15.2000,25,0.0),(10393,14,18.6000,42,0.0),(10393,25,11.2000,7,0.0),(10393,26,24.9000,70,0.0),(10393,31,10.0000,32,0.0),(10394,13,4.8000,10,0.0),(10394,62,39.4000,10,0.0),(10395,46,9.6000,28,0.0),(10395,53,26.2000,70,0.0),(10395,69,28.8000,8,0.0),(10396,23,7.2000,40,0.0),(10396,71,17.2000,60,0.0),(10396,72,27.8000,21,0.0),(10397,21,8.0000,10,0.0),(10397,51,42.4000,18,0.0),(10398,35,14.4000,30,0.0),(10398,55,19.2000,120,0.0),(10399,68,10.0000,60,0.0),(10399,71,17.2000,30,0.0),(10399,76,14.4000,35,0.0),(10399,77,10.4000,14,0.0),(10400,29,99.0000,21,0.0),(10400,35,14.4000,35,0.0),(10400,49,16.0000,30,0.0),(10401,30,20.7000,18,0.0),(10401,56,30.4000,70,0.0),(10401,65,16.8000,20,0.0),(10401,71,17.2000,60,0.0),(10402,23,7.2000,60,0.0),(10402,63,35.1000,65,0.0),(10403,16,13.9000,21,0.0),(10403,48,10.2000,70,0.0),(10404,26,24.9000,30,0.0),(10404,42,11.2000,40,0.0),(10404,49,16.0000,30,0.0),(10405,3,8.0000,50,0.0),(10406,1,14.4000,10,0.0),(10406,21,8.0000,30,0.0),(10406,28,36.4000,42,0.0),(10406,36,15.2000,5,0.0),(10406,40,14.7000,2,0.0),(10407,11,16.8000,30,0.0),(10407,69,28.8000,15,0.0),(10407,71,17.2000,15,0.0),(10408,37,20.8000,10,0.0),(10408,54,5.9000,6,0.0),(10408,62,39.4000,35,0.0),(10409,14,18.6000,12,0.0),(10409,21,8.0000,12,0.0),(10410,33,2.0000,49,0.0),(10410,59,44.0000,16,0.0),(10411,41,7.7000,25,0.0),(10411,44,15.5000,40,0.0),(10411,59,44.0000,9,0.0),(10412,14,18.6000,20,0.0),(10413,1,14.4000,24,0.0),(10413,62,39.4000,40,0.0),(10413,76,14.4000,14,0.0),(10414,19,7.3000,18,0.0),(10414,33,2.0000,50,0.0),(10415,17,31.2000,2,0.0),(10415,33,2.0000,20,0.0),(10416,19,7.3000,20,0.0),(10416,53,26.2000,10,0.0),(10416,57,15.6000,20,0.0),(10417,38,210.8000,50,0.0),(10417,46,9.6000,2,0.0),(10417,68,10.0000,36,0.0),(10417,77,10.4000,35,0.0),(10418,2,15.2000,60,0.0),(10418,47,7.6000,55,0.0),(10418,61,22.8000,16,0.0),(10418,74,8.0000,15,0.0),(10419,60,27.2000,60,0.0),(10419,69,28.8000,20,0.0),(10420,9,77.6000,20,0.0),(10420,13,4.8000,2,0.0),(10420,70,12.0000,8,0.0),(10420,73,12.0000,20,0.0),(10421,19,7.3000,4,0.0),(10421,26,24.9000,30,0.0),(10421,53,26.2000,15,0.0),(10421,77,10.4000,10,0.0),(10422,26,24.9000,2,0.0),(10423,31,10.0000,14,0.0),(10423,59,44.0000,20,0.0),(10424,35,14.4000,60,0.0),(10424,38,210.8000,49,0.0),(10424,68,10.0000,30,0.0),(10425,55,19.2000,10,0.0),(10425,76,14.4000,20,0.0),(10426,56,30.4000,5,0.0),(10426,64,26.6000,7,0.0),(10427,14,18.6000,35,0.0),(10428,46,9.6000,20,0.0),(10429,50,13.0000,40,0.0),(10429,63,35.1000,35,0.0),(10430,17,31.2000,45,0.0),(10430,21,8.0000,50,0.0),(10430,56,30.4000,30,0.0),(10430,59,44.0000,70,0.0),(10431,17,31.2000,50,0.0),(10431,40,14.7000,50,0.0),(10431,47,7.6000,30,0.0),(10432,26,24.9000,10,0.0),(10432,54,5.9000,40,0.0),(10433,56,30.4000,28,0.0),(10434,11,16.8000,6,0.0),(10434,76,14.4000,18,0.0),(10435,2,15.2000,10,0.0),(10435,22,16.8000,12,0.0),(10435,72,27.8000,10,0.0),(10436,46,9.6000,5,0.0),(10436,56,30.4000,40,0.0),(10436,64,26.6000,30,0.0),(10436,75,6.2000,24,0.0),(10437,53,26.2000,15,0.0),(10438,19,7.3000,15,0.0),(10438,34,11.2000,20,0.0),(10438,57,15.6000,15,0.0),(10439,12,30.4000,15,0.0),(10439,16,13.9000,16,0.0),(10439,64,26.6000,6,0.0),(10439,74,8.0000,30,0.0),(10440,2,15.2000,45,0.0),(10440,16,13.9000,49,0.0),(10440,29,99.0000,24,0.0),(10440,61,22.8000,90,0.0),(10441,27,35.1000,50,0.0),(10442,11,16.8000,30,0.0),(10442,54,5.9000,80,0.0),(10442,66,13.6000,60,0.0),(10443,11,16.8000,6,0.0),(10443,28,36.4000,12,0.0),(10444,17,31.2000,10,0.0),(10444,26,24.9000,15,0.0),(10444,35,14.4000,8,0.0),(10444,41,7.7000,30,0.0),(10445,39,14.4000,6,0.0),(10445,54,5.9000,15,0.0),(10446,19,7.3000,12,0.0),(10446,24,3.6000,20,0.0),(10446,31,10.0000,3,0.0),(10446,52,5.6000,15,0.0),(10447,19,7.3000,40,0.0),(10447,65,16.8000,35,0.0),(10447,71,17.2000,2,0.0),(10448,26,24.9000,6,0.0),(10448,40,14.7000,20,0.0),(10449,10,24.8000,14,0.0),(10449,52,5.6000,20,0.0),(10449,62,39.4000,35,0.0),(10450,10,24.8000,20,0.0),(10450,54,5.9000,6,0.0),(10451,55,19.2000,120,0.0),(10451,64,26.6000,35,0.0),(10451,65,16.8000,28,0.0),(10451,77,10.4000,55,0.0),(10452,28,36.4000,15,0.0),(10452,44,15.5000,100,0.0),(10453,48,10.2000,15,0.0),(10453,70,12.0000,25,0.0),(10454,16,13.9000,20,0.0),(10454,33,2.0000,20,0.0),(10454,46,9.6000,10,0.0),(10455,39,14.4000,20,0.0),(10455,53,26.2000,50,0.0),(10455,61,22.8000,25,0.0),(10455,71,17.2000,30,0.0),(10456,21,8.0000,40,0.0),(10456,49,16.0000,21,0.0),(10457,59,44.0000,36,0.0),(10458,26,24.9000,30,0.0),(10458,28,36.4000,30,0.0),(10458,43,36.8000,20,0.0),(10458,56,30.4000,15,0.0),(10458,71,17.2000,50,0.0),(10459,7,24.0000,16,0.0),(10459,46,9.6000,20,0.0),(10459,72,27.8000,40,0.0),(10460,68,10.0000,21,0.0),(10460,75,6.2000,4,0.0),(10461,21,8.0000,40,0.0),(10461,30,20.7000,28,0.0),(10461,55,19.2000,60,0.0),(10462,13,4.8000,1,0.0),(10462,23,7.2000,21,0.0),(10463,19,7.3000,21,0.0),(10463,42,11.2000,50,0.0),(10464,4,17.6000,16,0.0),(10464,43,36.8000,3,0.0),(10464,56,30.4000,30,0.0),(10464,60,27.2000,20,0.0),(10465,24,3.6000,25,0.0),(10465,29,99.0000,18,0.0),(10465,40,14.7000,20,0.0),(10465,45,7.6000,30,0.0),(10465,50,13.0000,25,0.0),(10466,11,16.8000,10,0.0),(10466,46,9.6000,5,0.0),(10467,24,3.6000,28,0.0),(10467,25,11.2000,12,0.0),(10468,30,20.7000,8,0.0),(10468,43,36.8000,15,0.0),(10469,2,15.2000,40,0.0),(10469,16,13.9000,35,0.0),(10469,44,15.5000,2,0.0),(10470,18,50.0000,30,0.0),(10470,23,7.2000,15,0.0),(10470,64,26.6000,8,0.0),(10471,7,24.0000,30,0.0),(10471,56,30.4000,20,0.0),(10472,24,3.6000,80,0.0),(10472,51,42.4000,18,0.0),(10473,33,2.0000,12,0.0),(10473,71,17.2000,12,0.0),(10474,14,18.6000,12,0.0),(10474,28,36.4000,18,0.0),(10474,40,14.7000,21,0.0),(10474,75,6.2000,10,0.0),(10475,31,10.0000,35,0.0),(10475,66,13.6000,60,0.0),(10475,76,14.4000,42,0.0),(10476,55,19.2000,2,0.0),(10476,70,12.0000,12,0.0),(10477,1,14.4000,15,0.0),(10477,21,8.0000,21,0.0),(10477,39,14.4000,20,0.0),(10478,10,24.8000,20,0.0),(10479,38,210.8000,30,0.0),(10479,53,26.2000,28,0.0),(10479,59,44.0000,60,0.0),(10479,64,26.6000,30,0.0),(10480,47,7.6000,30,0.0),(10480,59,44.0000,12,0.0),(10481,49,16.0000,24,0.0),(10481,60,27.2000,40,0.0),(10482,40,14.7000,10,0.0),(10483,34,11.2000,35,0.0),(10483,77,10.4000,30,0.0),(10484,21,8.0000,14,0.0),(10484,40,14.7000,10,0.0),(10484,51,42.4000,3,0.0),(10485,2,15.2000,20,0.0),(10485,3,8.0000,20,0.0),(10485,55,19.2000,30,0.0),(10485,70,12.0000,60,0.0),(10486,11,16.8000,5,0.0),(10486,51,42.4000,25,0.0),(10486,74,8.0000,16,0.0),(10487,19,7.3000,5,0.0),(10487,26,24.9000,30,0.0),(10487,54,5.9000,24,0.0),(10488,59,44.0000,30,0.0),(10488,73,12.0000,20,0.0),(10489,11,16.8000,15,0.0),(10489,16,13.9000,18,0.0),(10490,59,44.0000,60,0.0),(10490,68,10.0000,30,0.0),(10490,75,6.2000,36,0.0),(10491,44,15.5000,15,0.0),(10491,77,10.4000,7,0.0),(10492,25,11.2000,60,0.0),(10492,42,11.2000,20,0.0),(10493,65,16.8000,15,0.0),(10493,66,13.6000,10,0.0),(10493,69,28.8000,10,0.0),(10494,56,30.4000,30,0.0),(10495,23,7.2000,10,0.0),(10495,41,7.7000,20,0.0),(10495,77,10.4000,5,0.0),(10496,31,10.0000,20,0.0),(10497,56,30.4000,14,0.0),(10497,72,27.8000,25,0.0),(10497,77,10.4000,25,0.0),(10498,24,4.5000,14,0.0),(10498,40,18.4000,5,0.0),(10498,42,14.0000,30,0.0),(10499,28,45.6000,20,0.0),(10499,49,20.0000,25,0.0),(10500,15,15.5000,12,0.0),(10500,28,45.6000,8,0.0),(10501,54,7.4500,20,0.0),(10502,45,9.5000,21,0.0),(10502,53,32.8000,6,0.0),(10502,67,14.0000,30,0.0),(10503,14,23.2500,70,0.0),(10503,65,21.0500,20,0.0),(10504,2,19.0000,12,0.0),(10504,21,10.0000,12,0.0),(10504,53,32.8000,10,0.0),(10504,61,28.5000,25,0.0),(10505,62,49.3000,3,0.0),(10506,25,14.0000,18,0.0),(10506,70,15.0000,14,0.0),(10507,43,46.0000,15,0.0),(10507,48,12.7500,15,0.0),(10508,13,6.0000,10,0.0),(10508,39,18.0000,10,0.0),(10509,28,45.6000,3,0.0),(10510,29,123.7900,36,0.0),(10510,75,7.7500,36,0.0),(10511,4,22.0000,50,0.0),(10511,7,30.0000,50,0.0),(10511,8,40.0000,10,0.0),(10512,24,4.5000,10,0.0),(10512,46,12.0000,9,0.0),(10512,47,9.5000,6,0.0),(10512,60,34.0000,12,0.0),(10513,21,10.0000,40,0.0),(10513,32,32.0000,50,0.0),(10513,61,28.5000,15,0.0),(10514,20,81.0000,39,0.0),(10514,28,45.6000,35,0.0),(10514,56,38.0000,70,0.0),(10514,65,21.0500,39,0.0),(10514,75,7.7500,50,0.0),(10515,9,97.0000,16,0.0),(10515,16,17.4500,50,0.0),(10515,27,43.9000,120,0.0),(10515,33,2.5000,16,0.0),(10515,60,34.0000,84,0.0),(10516,18,62.5000,25,0.0),(10516,41,9.6500,80,0.0),(10516,42,14.0000,20,0.0),(10517,52,7.0000,6,0.0),(10517,59,55.0000,4,0.0),(10517,70,15.0000,6,0.0),(10518,24,4.5000,5,0.0),(10518,38,263.5000,15,0.0),(10518,44,19.4500,9,0.0),(10519,10,31.0000,16,0.0),(10519,56,38.0000,40,0.0),(10519,60,34.0000,10,0.0),(10520,24,4.5000,8,0.0),(10520,53,32.8000,5,0.0),(10521,35,18.0000,3,0.0),(10521,41,9.6500,10,0.0),(10521,68,12.5000,6,0.0),(10522,1,18.0000,40,0.0),(10522,8,40.0000,24,0.0),(10522,30,25.8900,20,0.0),(10522,40,18.4000,25,0.0),(10523,17,39.0000,25,0.0),(10523,20,81.0000,15,0.0),(10523,37,26.0000,18,0.0),(10523,41,9.6500,6,0.0),(10524,10,31.0000,2,0.0),(10524,30,25.8900,10,0.0),(10524,43,46.0000,60,0.0),(10524,54,7.4500,15,0.0),(10525,36,19.0000,30,0.0),(10525,40,18.4000,15,0.0),(10526,1,18.0000,8,0.0),(10526,13,6.0000,10,0.0),(10526,56,38.0000,30,0.0),(10527,4,22.0000,50,0.0),(10527,36,19.0000,30,0.0),(10528,11,21.0000,3,0.0),(10528,33,2.5000,8,0.0),(10528,72,34.8000,9,0.0),(10529,55,24.0000,14,0.0),(10529,68,12.5000,20,0.0),(10529,69,36.0000,10,0.0),(10530,17,39.0000,40,0.0),(10530,43,46.0000,25,0.0),(10530,61,28.5000,20,0.0),(10530,76,18.0000,50,0.0),(10531,59,55.0000,2,0.0),(10532,30,25.8900,15,0.0),(10532,66,17.0000,24,0.0),(10533,4,22.0000,50,0.0),(10533,72,34.8000,24,0.0),(10533,73,15.0000,24,0.0),(10534,30,25.8900,10,0.0),(10534,40,18.4000,10,0.0),(10534,54,7.4500,10,0.0),(10535,11,21.0000,50,0.0),(10535,40,18.4000,10,0.0),(10535,57,19.5000,5,0.0),(10535,59,55.0000,15,0.0),(10536,12,38.0000,15,0.0),(10536,31,12.5000,20,0.0),(10536,33,2.5000,30,0.0),(10536,60,34.0000,35,0.0),(10537,31,12.5000,30,0.0),(10537,51,53.0000,6,0.0),(10537,58,13.2500,20,0.0),(10537,72,34.8000,21,0.0),(10537,73,15.0000,9,0.0),(10538,70,15.0000,7,0.0),(10538,72,34.8000,1,0.0),(10539,13,6.0000,8,0.0),(10539,21,10.0000,15,0.0),(10539,33,2.5000,15,0.0),(10539,49,20.0000,6,0.0),(10540,3,10.0000,60,0.0),(10540,26,31.2300,40,0.0),(10540,38,263.5000,30,0.0),(10540,68,12.5000,35,0.0),(10541,24,4.5000,35,0.0),(10541,38,263.5000,4,0.0),(10541,65,21.0500,36,0.0),(10541,71,21.5000,9,0.0),(10542,11,21.0000,15,0.0),(10542,54,7.4500,24,0.0),(10543,12,38.0000,30,0.0),(10543,23,9.0000,70,0.0),(10544,28,45.6000,7,0.0),(10544,67,14.0000,7,0.0),(10545,11,21.0000,10,0.0),(10546,7,30.0000,10,0.0),(10546,35,18.0000,30,0.0),(10546,62,49.3000,40,0.0),(10547,32,32.0000,24,0.0),(10547,36,19.0000,60,0.0),(10548,34,14.0000,10,0.0),(10548,41,9.6500,14,0.0),(10549,31,12.5000,55,0.0),(10549,45,9.5000,100,0.0),(10549,51,53.0000,48,0.0),(10550,17,39.0000,8,0.0),(10550,19,9.2000,10,0.0),(10550,21,10.0000,6,0.0),(10550,61,28.5000,10,0.0),(10551,16,17.4500,40,0.0),(10551,35,18.0000,20,0.0),(10551,44,19.4500,40,0.0),(10552,69,36.0000,18,0.0),(10552,75,7.7500,30,0.0),(10553,11,21.0000,15,0.0),(10553,16,17.4500,14,0.0),(10553,22,21.0000,24,0.0),(10553,31,12.5000,30,0.0),(10553,35,18.0000,6,0.0),(10554,16,17.4500,30,0.0),(10554,23,9.0000,20,0.0),(10554,62,49.3000,20,0.0),(10554,77,13.0000,10,0.0),(10555,14,23.2500,30,0.0),(10555,19,9.2000,35,0.0),(10555,24,4.5000,18,0.0),(10555,51,53.0000,20,0.0),(10555,56,38.0000,40,0.0),(10556,72,34.8000,24,0.0),(10557,64,33.2500,30,0.0),(10557,75,7.7500,20,0.0),(10558,47,9.5000,25,0.0),(10558,51,53.0000,20,0.0),(10558,52,7.0000,30,0.0),(10558,53,32.8000,18,0.0),(10558,73,15.0000,3,0.0),(10559,41,9.6500,12,0.0),(10559,55,24.0000,18,0.0),(10560,30,25.8900,20,0.0),(10560,62,49.3000,15,0.0),(10561,44,19.4500,10,0.0),(10561,51,53.0000,50,0.0),(10562,33,2.5000,20,0.0),(10562,62,49.3000,10,0.0),(10563,36,19.0000,25,0.0),(10563,52,7.0000,70,0.0),(10564,17,39.0000,16,0.0),(10564,31,12.5000,6,0.0),(10564,55,24.0000,25,0.0),(10565,24,4.5000,25,0.0),(10565,64,33.2500,18,0.0),(10566,11,21.0000,35,0.0),(10566,18,62.5000,18,0.0),(10566,76,18.0000,10,0.0),(10567,31,12.5000,60,0.0),(10567,51,53.0000,3,0.0),(10567,59,55.0000,40,0.0),(10568,10,31.0000,5,0.0),(10569,31,12.5000,35,0.0),(10569,76,18.0000,30,0.0),(10570,11,21.0000,15,0.0),(10570,56,38.0000,60,0.0),(10571,14,23.2500,11,0.0),(10571,42,14.0000,28,0.0),(10572,16,17.4500,12,0.0),(10572,32,32.0000,10,0.0),(10572,40,18.4000,50,0.0),(10572,75,7.7500,15,0.0),(10573,17,39.0000,18,0.0),(10573,34,14.0000,40,0.0),(10573,53,32.8000,25,0.0),(10574,33,2.5000,14,0.0),(10574,40,18.4000,2,0.0),(10574,62,49.3000,10,0.0),(10574,64,33.2500,6,0.0),(10575,59,55.0000,12,0.0),(10575,63,43.9000,6,0.0),(10575,72,34.8000,30,0.0),(10575,76,18.0000,10,0.0),(10576,1,18.0000,10,0.0),(10576,31,12.5000,20,0.0),(10576,44,19.4500,21,0.0),(10577,39,18.0000,10,0.0),(10577,75,7.7500,20,0.0),(10577,77,13.0000,18,0.0),(10578,35,18.0000,20,0.0),(10578,57,19.5000,6,0.0),(10579,15,15.5000,10,0.0),(10579,75,7.7500,21,0.0),(10580,14,23.2500,15,0.0),(10580,41,9.6500,9,0.0),(10580,65,21.0500,30,0.0),(10581,75,7.7500,50,0.0),(10582,57,19.5000,4,0.0),(10582,76,18.0000,14,0.0),(10583,29,123.7900,10,0.0),(10583,60,34.0000,24,0.0),(10583,69,36.0000,10,0.0),(10584,31,12.5000,50,0.0),(10585,47,9.5000,15,0.0),(10586,52,7.0000,4,0.0),(10587,26,31.2300,6,0.0),(10587,35,18.0000,20,0.0),(10587,77,13.0000,20,0.0),(10588,18,62.5000,40,0.0),(10588,42,14.0000,100,0.0),(10589,35,18.0000,4,0.0),(10590,1,18.0000,20,0.0),(10590,77,13.0000,60,0.0),(10591,3,10.0000,14,0.0),(10591,7,30.0000,10,0.0),(10591,54,7.4500,50,0.0),(10592,15,15.5000,25,0.0),(10592,26,31.2300,5,0.0),(10593,20,81.0000,21,0.0),(10593,69,36.0000,20,0.0),(10593,76,18.0000,4,0.0),(10594,52,7.0000,24,0.0),(10594,58,13.2500,30,0.0),(10595,35,18.0000,30,0.0),(10595,61,28.5000,120,0.0),(10595,69,36.0000,65,0.0),(10596,56,38.0000,5,0.0),(10596,63,43.9000,24,0.0),(10596,75,7.7500,30,0.0),(10597,24,4.5000,35,0.0),(10597,57,19.5000,20,0.0),(10597,65,21.0500,12,0.0),(10598,27,43.9000,50,0.0),(10598,71,21.5000,9,0.0),(10599,62,49.3000,10,0.0),(10600,54,7.4500,4,0.0),(10600,73,15.0000,30,0.0),(10601,13,6.0000,60,0.0),(10601,59,55.0000,35,0.0),(10602,77,13.0000,5,0.0),(10603,22,21.0000,48,0.0),(10603,49,20.0000,25,0.0),(10604,48,12.7500,6,0.0),(10604,76,18.0000,10,0.0),(10605,16,17.4500,30,0.0),(10605,59,55.0000,20,0.0),(10605,60,34.0000,70,0.0),(10605,71,21.5000,15,0.0),(10606,4,22.0000,20,0.0),(10606,55,24.0000,20,0.0),(10606,62,49.3000,10,0.0),(10607,7,30.0000,45,0.0),(10607,17,39.0000,100,0.0),(10607,33,2.5000,14,0.0),(10607,40,18.4000,42,0.0),(10607,72,34.8000,12,0.0),(10608,56,38.0000,28,0.0),(10609,1,18.0000,3,0.0),(10609,10,31.0000,10,0.0),(10609,21,10.0000,6,0.0),(10610,36,19.0000,21,0.0),(10611,1,18.0000,6,0.0),(10611,2,19.0000,10,0.0),(10611,60,34.0000,15,0.0),(10612,10,31.0000,70,0.0),(10612,36,19.0000,55,0.0),(10612,49,20.0000,18,0.0),(10612,60,34.0000,40,0.0),(10612,76,18.0000,80,0.0),(10613,13,6.0000,8,0.0),(10613,75,7.7500,40,0.0),(10614,11,21.0000,14,0.0),(10614,21,10.0000,8,0.0),(10614,39,18.0000,5,0.0),(10615,55,24.0000,5,0.0),(10616,38,263.5000,15,0.0),(10616,56,38.0000,14,0.0),(10616,70,15.0000,15,0.0),(10616,71,21.5000,15,0.0),(10617,59,55.0000,30,0.0),(10618,6,25.0000,70,0.0),(10618,56,38.0000,20,0.0),(10618,68,12.5000,15,0.0),(10619,21,10.0000,42,0.0),(10619,22,21.0000,40,0.0),(10620,24,4.5000,5,0.0),(10620,52,7.0000,5,0.0),(10621,19,9.2000,5,0.0),(10621,23,9.0000,10,0.0),(10621,70,15.0000,20,0.0),(10621,71,21.5000,15,0.0),(10622,2,19.0000,20,0.0),(10622,68,12.5000,18,0.0),(10623,14,23.2500,21,0.0),(10623,19,9.2000,15,0.0),(10623,21,10.0000,25,0.0),(10623,24,4.5000,3,0.0),(10623,35,18.0000,30,0.0),(10624,28,45.6000,10,0.0),(10624,29,123.7900,6,0.0),(10624,44,19.4500,10,0.0),(10625,14,23.2500,3,0.0),(10625,42,14.0000,5,0.0),(10625,60,34.0000,10,0.0),(10626,53,32.8000,12,0.0),(10626,60,34.0000,20,0.0),(10626,71,21.5000,20,0.0),(10627,62,49.3000,15,0.0),(10627,73,15.0000,35,0.0),(10628,1,18.0000,25,0.0),(10629,29,123.7900,20,0.0),(10629,64,33.2500,9,0.0),(10630,55,24.0000,12,0.0),(10630,76,18.0000,35,0.0),(10631,75,7.7500,8,0.0),(10632,2,19.0000,30,0.0),(10632,33,2.5000,20,0.0),(10633,12,38.0000,36,0.0),(10633,13,6.0000,13,0.0),(10633,26,31.2300,35,0.0),(10633,62,49.3000,80,0.0),(10634,7,30.0000,35,0.0),(10634,18,62.5000,50,0.0),(10634,51,53.0000,15,0.0),(10634,75,7.7500,2,0.0),(10635,4,22.0000,10,0.0),(10635,5,21.3500,15,0.0),(10635,22,21.0000,40,0.0),(10636,4,22.0000,25,0.0),(10636,58,13.2500,6,0.0),(10637,11,21.0000,10,0.0),(10637,50,16.2500,25,0.0),(10637,56,38.0000,60,0.0),(10638,45,9.5000,20,0.0),(10638,65,21.0500,21,0.0),(10638,72,34.8000,60,0.0),(10639,18,62.5000,8,0.0),(10640,69,36.0000,20,0.0),(10640,70,15.0000,15,0.0),(10641,2,19.0000,50,0.0),(10641,40,18.4000,60,0.0),(10642,21,10.0000,30,0.0),(10642,61,28.5000,20,0.0),(10643,28,45.6000,15,0.0),(10643,39,18.0000,21,0.0),(10643,46,12.0000,2,0.0),(10644,18,62.5000,4,0.0),(10644,43,46.0000,20,0.0),(10644,46,12.0000,21,0.0),(10645,18,62.5000,20,0.0),(10645,36,19.0000,15,0.0),(10646,1,18.0000,15,0.0),(10646,10,31.0000,18,0.0),(10646,71,21.5000,30,0.0),(10646,77,13.0000,35,0.0),(10647,19,9.2000,30,0.0),(10647,39,18.0000,20,0.0),(10648,22,21.0000,15,0.0),(10648,24,4.5000,15,0.0),(10649,28,45.6000,20,0.0),(10649,72,34.8000,15,0.0),(10650,30,25.8900,30,0.0),(10650,53,32.8000,25,0.0),(10650,54,7.4500,30,0.0),(10651,19,9.2000,12,0.0),(10651,22,21.0000,20,0.0),(10652,30,25.8900,2,0.0),(10652,42,14.0000,20,0.0),(10653,16,17.4500,30,0.0),(10653,60,34.0000,20,0.0),(10654,4,22.0000,12,0.0),(10654,39,18.0000,20,0.0),(10654,54,7.4500,6,0.0),(10655,41,9.6500,20,0.0),(10656,14,23.2500,3,0.0),(10656,44,19.4500,28,0.0),(10656,47,9.5000,6,0.0),(10657,15,15.5000,50,0.0),(10657,41,9.6500,24,0.0),(10657,46,12.0000,45,0.0),(10657,47,9.5000,10,0.0),(10657,56,38.0000,45,0.0),(10657,60,34.0000,30,0.0),(10658,21,10.0000,60,0.0),(10658,40,18.4000,70,0.0),(10658,60,34.0000,55,0.0),(10658,77,13.0000,70,0.0),(10659,31,12.5000,20,0.0),(10659,40,18.4000,24,0.0),(10659,70,15.0000,40,0.0),(10660,20,81.0000,21,0.0),(10661,39,18.0000,3,0.0),(10661,58,13.2500,49,0.0),(10662,68,12.5000,10,0.0),(10663,40,18.4000,30,0.0),(10663,42,14.0000,30,0.0),(10663,51,53.0000,20,0.0),(10664,10,31.0000,24,0.0),(10664,56,38.0000,12,0.0),(10664,65,21.0500,15,0.0),(10665,51,53.0000,20,0.0),(10665,59,55.0000,1,0.0),(10665,76,18.0000,10,0.0),(10666,29,123.7900,36,0.0),(10666,65,21.0500,10,0.0),(10667,69,36.0000,45,0.0),(10667,71,21.5000,14,0.0),(10668,31,12.5000,8,0.0),(10668,55,24.0000,4,0.0),(10668,64,33.2500,15,0.0),(10669,36,19.0000,30,0.0),(10670,23,9.0000,32,0.0),(10670,46,12.0000,60,0.0),(10670,67,14.0000,25,0.0),(10670,73,15.0000,50,0.0),(10670,75,7.7500,25,0.0),(10671,16,17.4500,10,0.0),(10671,62,49.3000,10,0.0),(10671,65,21.0500,12,0.0),(10672,38,263.5000,15,0.0),(10672,71,21.5000,12,0.0),(10673,16,17.4500,3,0.0),(10673,42,14.0000,6,0.0),(10673,43,46.0000,6,0.0),(10674,23,9.0000,5,0.0),(10675,14,23.2500,30,0.0),(10675,53,32.8000,10,0.0),(10675,58,13.2500,30,0.0),(10676,10,31.0000,2,0.0),(10676,19,9.2000,7,0.0),(10676,44,19.4500,21,0.0),(10677,26,31.2300,30,0.0),(10677,33,2.5000,8,0.0),(10678,12,38.0000,100,0.0),(10678,33,2.5000,30,0.0),(10678,41,9.6500,120,0.0),(10678,54,7.4500,30,0.0),(10679,59,55.0000,12,0.0),(10680,16,17.4500,50,0.0),(10680,31,12.5000,20,0.0),(10680,42,14.0000,40,0.0),(10681,19,9.2000,30,0.0),(10681,21,10.0000,12,0.0),(10681,64,33.2500,28,0.0),(10682,33,2.5000,30,0.0),(10682,66,17.0000,4,0.0),(10682,75,7.7500,30,0.0),(10683,52,7.0000,9,0.0),(10684,40,18.4000,20,0.0),(10684,47,9.5000,40,0.0),(10684,60,34.0000,30,0.0),(10685,10,31.0000,20,0.0),(10685,41,9.6500,4,0.0),(10685,47,9.5000,15,0.0),(10686,17,39.0000,30,0.0),(10686,26,31.2300,15,0.0),(10687,9,97.0000,50,0.0),(10687,29,123.7900,10,0.0),(10687,36,19.0000,6,0.0),(10688,10,31.0000,18,0.0),(10688,28,45.6000,60,0.0),(10688,34,14.0000,14,0.0),(10689,1,18.0000,35,0.0),(10690,56,38.0000,20,0.0),(10690,77,13.0000,30,0.0),(10691,1,18.0000,30,0.0),(10691,29,123.7900,40,0.0),(10691,43,46.0000,40,0.0),(10691,44,19.4500,24,0.0),(10691,62,49.3000,48,0.0),(10692,63,43.9000,20,0.0),(10693,9,97.0000,6,0.0),(10693,54,7.4500,60,0.0),(10693,69,36.0000,30,0.0),(10693,73,15.0000,15,0.0),(10694,7,30.0000,90,0.0),(10694,59,55.0000,25,0.0),(10694,70,15.0000,50,0.0),(10695,8,40.0000,10,0.0),(10695,12,38.0000,4,0.0),(10695,24,4.5000,20,0.0),(10696,17,39.0000,20,0.0),(10696,46,12.0000,18,0.0),(10697,19,9.2000,7,0.0),(10697,35,18.0000,9,0.0),(10697,58,13.2500,30,0.0),(10697,70,15.0000,30,0.0),(10698,11,21.0000,15,0.0),(10698,17,39.0000,8,0.0),(10698,29,123.7900,12,0.0),(10698,65,21.0500,65,0.0),(10698,70,15.0000,8,0.0),(10699,47,9.5000,12,0.0),(10700,1,18.0000,5,0.0),(10700,34,14.0000,12,0.0),(10700,68,12.5000,40,0.0),(10700,71,21.5000,60,0.0)
,(10701,59,55.0000,42,0.0),(10701,71,21.5000,20,0.0),(10701,76,18.0000,35,0.0),(10702,3,10.0000,6,0.0),(10702,76,18.0000,15,0.0),(10703,2,19.0000,5,0.0),(10703,59,55.0000,35,0.0),(10703,73,15.0000,35,0.0),(10704,4,22.0000,6,0.0),(10704,24,4.5000,35,0.0),(10704,48,12.7500,24,0.0),(10705,31,12.5000,20,0.0),(10705,32,32.0000,4,0.0),(10706,16,17.4500,20,0.0),(10706,43,46.0000,24,0.0),(10706,59,55.0000,8,0.0),(10707,55,24.0000,21,0.0),(10707,57,19.5000,40,0.0),(10707,70,15.0000,28,0.0),(10708,5,21.3500,4,0.0),(10708,36,19.0000,5,0.0),(10709,8,40.0000,40,0.0),(10709,51,53.0000,28,0.0),(10709,60,34.0000,10,0.0),(10710,19,9.2000,5,0.0),(10710,47,9.5000,5,0.0),(10711,19,9.2000,12,0.0),(10711,41,9.6500,42,0.0),(10711,53,32.8000,120,0.0),(10712,53,32.8000,3,0.0),(10712,56,38.0000,30,0.0),(10713,10,31.0000,18,0.0),(10713,26,31.2300,30,0.0),(10713,45,9.5000,110,0.0),(10713,46,12.0000,24,0.0),(10714,2,19.0000,30,0.0),(10714,17,39.0000,27,0.0),(10714,47,9.5000,50,0.0),(10714,56,38.0000,18,0.0),(10714,58,13.2500,12,0.0),(10715,10,31.0000,21,0.0),(10715,71,21.5000,30,0.0),(10716,21,10.0000,5,0.0),(10716,51,53.0000,7,0.0),(10716,61,28.5000,10,0.0),(10717,21,10.0000,32,0.0),(10717,54,7.4500,15,0.0),(10717,69,36.0000,25,0.0),(10718,12,38.0000,36,0.0),(10718,16,17.4500,20,0.0),(10718,36,19.0000,40,0.0),(10718,62,49.3000,20,0.0),(10719,18,62.5000,12,0.0),(10719,30,25.8900,3,0.0),(10719,54,7.4500,40,0.0),(10720,35,18.0000,21,0.0),(10720,71,21.5000,8,0.0),(10721,44,19.4500,50,0.0),(10722,2,19.0000,3,0.0),(10722,31,12.5000,50,0.0),(10722,68,12.5000,45,0.0),(10722,75,7.7500,42,0.0),(10723,26,31.2300,15,0.0),(10724,10,31.0000,16,0.0),(10724,61,28.5000,5,0.0),(10725,41,9.6500,12,0.0),(10725,52,7.0000,4,0.0),(10725,55,24.0000,6,0.0),(10726,4,22.0000,25,0.0),(10726,11,21.0000,5,0.0),(10727,17,39.0000,20,0.0),(10727,56,38.0000,10,0.0),(10727,59,55.0000,10,0.0),(10728,30,25.8900,15,0.0),(10728,40,18.4000,6,0.0),(10728,55,24.0000,12,0.0),(10728,60,34.0000,15,0.0),(10729,1,18.0000,50,0.0),(10729,21,10.0000,30,0.0),(10729,50,16.2500,40,0.0),(10730,16,17.4500,15,0.0),(10730,31,12.5000,3,0.0),(10730,65,21.0500,10,0.0),(10731,21,10.0000,40,0.0),(10731,51,53.0000,30,0.0),(10732,76,18.0000,20,0.0),(10733,14,23.2500,16,0.0),(10733,28,45.6000,20,0.0),(10733,52,7.0000,25,0.0),(10734,6,25.0000,30,0.0),(10734,30,25.8900,15,0.0),(10734,76,18.0000,20,0.0),(10735,61,28.5000,20,0.0),(10735,77,13.0000,2,0.0),(10736,65,21.0500,40,0.0),(10736,75,7.7500,20,0.0),(10737,13,6.0000,4,0.0),(10737,41,9.6500,12,0.0),(10738,16,17.4500,3,0.0),(10739,36,19.0000,6,0.0),(10739,52,7.0000,18,0.0),(10740,28,45.6000,5,0.0),(10740,35,18.0000,35,0.0),(10740,45,9.5000,40,0.0),(10740,56,38.0000,14,0.0),(10741,2,19.0000,15,0.0),(10742,3,10.0000,20,0.0),(10742,60,34.0000,50,0.0),(10742,72,34.8000,35,0.0),(10743,46,12.0000,28,0.0),(10744,40,18.4000,50,0.0),(10745,18,62.5000,24,0.0),(10745,44,19.4500,16,0.0),(10745,59,55.0000,45,0.0),(10745,72,34.8000,7,0.0),(10746,13,6.0000,6,0.0),(10746,42,14.0000,28,0.0),(10746,62,49.3000,9,0.0),(10746,69,36.0000,40,0.0),(10747,31,12.5000,8,0.0),(10747,41,9.6500,35,0.0),(10747,63,43.9000,9,0.0),(10747,69,36.0000,30,0.0),(10748,23,9.0000,44,0.0),(10748,40,18.4000,40,0.0),(10748,56,38.0000,28,0.0),(10749,56,38.0000,15,0.0),(10749,59,55.0000,6,0.0),(10749,76,18.0000,10,0.0),(10750,14,23.2500,5,0.0),(10750,45,9.5000,40,0.0),(10750,59,55.0000,25,0.0),(10751,26,31.2300,12,0.0),(10751,30,25.8900,30,0.0),(10751,50,16.2500,20,0.0),(10751,73,15.0000,15,0.0),(10752,1,18.0000,8,0.0),(10752,69,36.0000,3,0.0),(10753,45,9.5000,4,0.0),(10753,74,10.0000,5,0.0),(10754,40,18.4000,3,0.0),(10755,47,9.5000,30,0.0),(10755,56,38.0000,30,0.0),(10755,57,19.5000,14,0.0),(10755,69,36.0000,25,0.0),(10756,18,62.5000,21,0.0),(10756,36,19.0000,20,0.0),(10756,68,12.5000,6,0.0),(10756,69,36.0000,20,0.0),(10757,34,14.0000,30,0.0),(10757,59,55.0000,7,0.0),(10757,62,49.3000,30,0.0),(10757,64,33.2500,24,0.0),(10758,26,31.2300,20,0.0),(10758,52,7.0000,60,0.0),(10758,70,15.0000,40,0.0),(10759,32,32.0000,10,0.0),(10760,25,14.0000,12,0.0),(10760,27,43.9000,40,0.0),(10760,43,46.0000,30,0.0),(10761,25,14.0000,35,0.0),(10761,75,7.7500,18,0.0),(10762,39,18.0000,16,0.0),(10762,47,9.5000,30,0.0),(10762,51,53.0000,28,0.0),(10762,56,38.0000,60,0.0),(10763,21,10.0000,40,0.0),(10763,22,21.0000,6,0.0),(10763,24,4.5000,20,0.0),(10764,3,10.0000,20,0.0),(10764,39,18.0000,130,0.0),(10765,65,21.0500,80,0.0),(10766,2,19.0000,40,0.0),(10766,7,30.0000,35,0.0),(10766,68,12.5000,40,0.0),(10767,42,14.0000,2,0.0),(10768,22,21.0000,4,0.0),(10768,31,12.5000,50,0.0),(10768,60,34.0000,15,0.0),(10768,71,21.5000,12,0.0),(10769,41,9.6500,30,0.0),(10769,52,7.0000,15,0.0),(10769,61,28.5000,20,0.0),(10769,62,49.3000,15,0.0),(10770,11,21.0000,15,0.0),(10771,71,21.5000,16,0.0),(10772,29,123.7900,18,0.0),(10772,59,55.0000,25,0.0),(10773,17,39.0000,33,0.0),(10773,31,12.5000,70,0.0),(10773,75,7.7500,7,0.0),(10774,31,12.5000,2,0.0),(10774,66,17.0000,50,0.0),(10775,10,31.0000,6,0.0),(10775,67,14.0000,3,0.0),(10776,31,12.5000,16,0.0),(10776,42,14.0000,12,0.0),(10776,45,9.5000,27,0.0),(10776,51,53.0000,120,0.0),(10777,42,14.0000,20,0.0),(10778,41,9.6500,10,0.0),(10779,16,17.4500,20,0.0),(10779,62,49.3000,20,0.0),(10780,70,15.0000,35,0.0),(10780,77,13.0000,15,0.0),(10781,54,7.4500,3,0.0),(10781,56,38.0000,20,0.0),(10781,74,10.0000,35,0.0),(10782,31,12.5000,1,0.0),(10783,31,12.5000,10,0.0),(10783,38,263.5000,5,0.0),(10784,36,19.0000,30,0.0),(10784,39,18.0000,2,0.0),(10784,72,34.8000,30,0.0),(10785,10,31.0000,10,0.0),(10785,75,7.7500,10,0.0),(10786,8,40.0000,30,0.0),(10786,30,25.8900,15,0.0),(10786,75,7.7500,42,0.0),(10787,2,19.0000,15,0.0),(10787,29,123.7900,20,0.0),(10788,19,9.2000,50,0.0),(10788,75,7.7500,40,0.0),(10789,18,62.5000,30,0.0),(10789,35,18.0000,15,0.0),(10789,63,43.9000,30,0.0),(10789,68,12.5000,18,0.0),(10790,7,30.0000,3,0.0),(10790,56,38.0000,20,0.0),(10791,29,123.7900,14,0.0),(10791,41,9.6500,20,0.0),(10792,2,19.0000,10,0.0),(10792,54,7.4500,3,0.0),(10792,68,12.5000,15,0.0),(10793,41,9.6500,14,0.0),(10793,52,7.0000,8,0.0),(10794,14,23.2500,15,0.0),(10794,54,7.4500,6,0.0),(10795,16,17.4500,65,0.0),(10795,17,39.0000,35,0.0),(10796,26,31.2300,21,0.0),(10796,44,19.4500,10,0.0),(10796,64,33.2500,35,0.0),(10796,69,36.0000,24,0.0),(10797,11,21.0000,20,0.0),(10798,62,49.3000,2,0.0),(10798,72,34.8000,10,0.0),(10799,13,6.0000,20,0.0),(10799,24,4.5000,20,0.0),(10799,59,55.0000,25,0.0),(10800,11,21.0000,50,0.0),(10800,51,53.0000,10,0.0),(10800,54,7.4500,7,0.0),(10801,17,39.0000,40,0.0),(10801,29,123.7900,20,0.0),(10802,30,25.8900,25,0.0),(10802,51,53.0000,30,0.0),(10802,55,24.0000,60,0.0),(10802,62,49.3000,5,0.0),(10803,19,9.2000,24,0.0),(10803,25,14.0000,15,0.0),(10803,59,55.0000,15,0.0),(10804,10,31.0000,36,0.0),(10804,28,45.6000,24,0.0),(10804,49,20.0000,4,0.0),(10805,34,14.0000,10,0.0),(10805,38,263.5000,10,0.0),(10806,2,19.0000,20,0.0),(10806,65,21.0500,2,0.0),(10806,74,10.0000,15,0.0),(10807,40,18.4000,1,0.0),(10808,56,38.0000,20,0.0),(10808,76,18.0000,50,0.0),(10809,52,7.0000,20,0.0),(10810,13,6.0000,7,0.0),(10810,25,14.0000,5,0.0),(10810,70,15.0000,5,0.0),(10811,19,9.2000,15,0.0),(10811,23,9.0000,18,0.0),(10811,40,18.4000,30,0.0),(10812,31,12.5000,16,0.0),(10812,72,34.8000,40,0.0),(10812,77,13.0000,20,0.0),(10813,2,19.0000,12,0.0),(10813,46,12.0000,35,0.0),(10814,41,9.6500,20,0.0),(10814,43,46.0000,20,0.0),(10814,48,12.7500,8,0.0),(10814,61,28.5000,30,0.0),(10815,33,2.5000,16,0.0),(10816,38,263.5000,30,0.0),(10816,62,49.3000,20,0.0),(10817,26,31.2300,40,0.0),(10817,38,263.5000,30,0.0),(10817,40,18.4000,60,0.0),(10817,62,49.3000,25,0.0),(10818,32,32.0000,20,0.0),(10818,41,9.6500,20,0.0),(10819,43,46.0000,7,0.0),(10819,75,7.7500,20,0.0),(10820,56,38.0000,30,0.0),(10821,35,18.0000,20,0.0),(10821,51,53.0000,6,0.0),(10822,62,49.3000,3,0.0),(10822,70,15.0000,6,0.0),(10823,11,21.0000,20,0.0),(10823,57,19.5000,15,0.0),(10823,59,55.0000,40,0.0),(10823,77,13.0000,15,0.0),(10824,41,9.6500,12,0.0),(10824,70,15.0000,9,0.0),(10825,26,31.2300,12,0.0),(10825,53,32.8000,20,0.0),(10826,31,12.5000,35,0.0),(10826,57,19.5000,15,0.0),(10827,10,31.0000,15,0.0),(10827,39,18.0000,21,0.0),(10828,20,81.0000,5,0.0),(10828,38,263.5000,2,0.0),(10829,2,19.0000,10,0.0),(10829,8,40.0000,20,0.0),(10829,13,6.0000,10,0.0),(10829,60,34.0000,21,0.0),(10830,6,25.0000,6,0.0),(10830,39,18.0000,28,0.0),(10830,60,34.0000,30,0.0),(10830,68,12.5000,24,0.0),(10831,19,9.2000,2,0.0),(10831,35,18.0000,8,0.0),(10831,38,263.5000,8,0.0),(10831,43,46.0000,9,0.0),(10832,13,6.0000,3,0.0),(10832,25,14.0000,10,0.0),(10832,44,19.4500,16,0.0),(10832,64,33.2500,3,0.0),(10833,7,30.0000,20,0.0),(10833,31,12.5000,9,0.0),(10833,53,32.8000,9,0.0),(10834,29,123.7900,8,0.0),(10834,30,25.8900,20,0.0),(10835,59,55.0000,15,0.0),(10835,77,13.0000,2,0.0),(10836,22,21.0000,52,0.0),(10836,35,18.0000,6,0.0),(10836,57,19.5000,24,0.0),(10836,60,34.0000,60,0.0),(10836,64,33.2500,30,0.0),(10837,13,6.0000,6,0.0),(10837,40,18.4000,25,0.0),(10837,47,9.5000,40,0.0),(10837,76,18.0000,21,0.0),(10838,1,18.0000,4,0.0),(10838,18,62.5000,25,0.0),(10838,36,19.0000,50,0.0),(10839,58,13.2500,30,0.0),(10839,72,34.8000,15,0.0),(10840,25,14.0000,6,0.0),(10840,39,18.0000,10,0.0),(10841,10,31.0000,16,0.0),(10841,56,38.0000,30,0.0),(10841,59,55.0000,50,0.0),(10841,77,13.0000,15,0.0),(10842,11,21.0000,15,0.0),(10842,43,46.0000,5,0.0),(10842,68,12.5000,20,0.0),(10842,70,15.0000,12,0.0),(10843,51,53.0000,4,0.0),(10844,22,21.0000,35,0.0),(10845,23,9.0000,70,0.0),(10845,35,18.0000,25,0.0),(10845,42,14.0000,42,0.0),(10845,58,13.2500,60,0.0),(10845,64,33.2500,48,0.0),(10846,4,22.0000,21,0.0),(10846,70,15.0000,30,0.0),(10846,74,10.0000,20,0.0),(10847,1,18.0000,80,0.0),(10847,19,9.2000,12,0.0),(10847,37,26.0000,60,0.0),(10847,45,9.5000,36,0.0),(10847,60,34.0000,45,0.0),(10847,71,21.5000,55,0.0),(10848,5,21.3500,30,0.0),(10848,9,97.0000,3,0.0),(10849,3,10.0000,49,0.0),(10849,26,31.2300,18,0.0),(10850,25,14.0000,20,0.0),(10850,33,2.5000,4,0.0),(10850,70,15.0000,30,0.0),(10851,2,19.0000,5,0.0),(10851,25,14.0000,10,0.0),(10851,57,19.5000,10,0.0),(10851,59,55.0000,42,0.0),(10852,2,19.0000,15,0.0),(10852,17,39.0000,6,0.0),(10852,62,49.3000,50,0.0),(10853,18,62.5000,10,0.0),(10854,10,31.0000,100,0.0),(10854,13,6.0000,65,0.0),(10855,16,17.4500,50,0.0),(10855,31,12.5000,14,0.0),(10855,56,38.0000,24,0.0),(10855,65,21.0500,15,0.0),(10856,2,19.0000,20,0.0),(10856,42,14.0000,20,0.0),(10857,3,10.0000,30,0.0),(10857,26,31.2300,35,0.0),(10857,29,123.7900,10,0.0),(10858,7,30.0000,5,0.0),(10858,27,43.9000,10,0.0),(10858,70,15.0000,4,0.0),(10859,24,4.5000,40,0.0),(10859,54,7.4500,35,0.0),(10859,64,33.2500,30,0.0),(10860,51,53.0000,3,0.0),(10860,76,18.0000,20,0.0),(10861,17,39.0000,42,0.0),(10861,18,62.5000,20,0.0),(10861,21,10.0000,40,0.0),(10861,33,2.5000,35,0.0),(10861,62,49.3000,3,0.0),(10862,11,21.0000,25,0.0),(10862,52,7.0000,8,0.0),(10863,1,18.0000,20,0.0),(10863,58,13.2500,12,0.0),(10864,35,18.0000,4,0.0),(10864,67,14.0000,15,0.0),(10865,38,263.5000,60,0.0),(10865,39,18.0000,80,0.0),(10866,2,19.0000,21,0.0),(10866,24,4.5000,6,0.0),(10866,30,25.8900,40,0.0),(10867,53,32.8000,3,0.0),(10868,26,31.2300,20,0.0),(10868,35,18.0000,30,0.0),(10868,49,20.0000,42,0.0),(10869,1,18.0000,40,0.0),(10869,11,21.0000,10,0.0),(10869,23,9.0000,50,0.0),(10869,68,12.5000,20,0.0),(10870,35,18.0000,3,0.0),(10870,51,53.0000,2,0.0),(10871,6,25.0000,50,0.0),(10871,16,17.4500,12,0.0),(10871,17,39.0000,16,0.0),(10872,55,24.0000,10,0.0),(10872,62,49.3000,20,0.0),(10872,64,33.2500,15,0.0),(10872,65,21.0500,21,0.0),(10873,21,10.0000,20,0.0),(10873,28,45.6000,3,0.0),(10874,10,31.0000,10,0.0),(10875,19,9.2000,25,0.0),(10875,47,9.5000,21,0.0),(10875,49,20.0000,15,0.0),(10876,46,12.0000,21,0.0),(10876,64,33.2500,20,0.0),(10877,16,17.4500,30,0.0),(10877,18,62.5000,25,0.0)
,(10878,20,81.0000,20,0.0),(10879,40,18.4000,12,0.0),(10879,65,21.0500,10,0.0),(10879,76,18.0000,10,0.0),(10880,23,9.0000,30,0.0),(10880,61,28.5000,30,0.0),(10880,70,15.0000,50,0.0),(10881,73,15.0000,10,0.0),(10882,42,14.0000,25,0.0),(10882,49,20.0000,20,0.0),(10882,54,7.4500,32,0.0),(10883,24,4.5000,8,0.0),(10884,21,10.0000,40,0.0),(10884,56,38.0000,21,0.0),(10884,65,21.0500,12,0.0),(10885,2,19.0000,20,0.0),(10885,24,4.5000,12,0.0),(10885,70,15.0000,30,0.0),(10885,77,13.0000,25,0.0),(10886,10,31.0000,70,0.0),(10886,31,12.5000,35,0.0),(10886,77,13.0000,40,0.0),(10887,25,14.0000,5,0.0),(10888,2,19.0000,20,0.0),(10888,68,12.5000,18,0.0),(10889,11,21.0000,40,0.0),(10889,38,263.5000,40,0.0),(10890,17,39.0000,15,0.0),(10890,34,14.0000,10,0.0),(10890,41,9.6500,14,0.0),(10891,30,25.8900,15,0.0),(10892,59,55.0000,40,0.0),(10893,8,40.0000,30,0.0),(10893,24,4.5000,10,0.0),(10893,29,123.7900,24,0.0),(10893,30,25.8900,35,0.0),(10893,36,19.0000,20,0.0),(10894,13,6.0000,28,0.0),(10894,69,36.0000,50,0.0),(10894,75,7.7500,120,0.0),(10895,24,4.5000,110,0.0),(10895,39,18.0000,45,0.0),(10895,40,18.4000,91,0.0),(10895,60,34.0000,100,0.0),(10896,45,9.5000,15,0.0),(10896,56,38.0000,16,0.0),(10897,29,123.7900,80,0.0),(10897,30,25.8900,36,0.0),(10898,13,6.0000,5,0.0),(10899,39,18.0000,8,0.0),(10900,70,15.0000,3,0.0),(10901,41,9.6500,30,0.0),(10901,71,21.5000,30,0.0),(10902,55,24.0000,30,0.0),(10902,62,49.3000,6,0.0),(10903,13,6.0000,40,0.0),(10903,65,21.0500,21,0.0),(10903,68,12.5000,20,0.0),(10904,58,13.2500,15,0.0),(10904,62,49.3000,35,0.0),(10905,1,18.0000,20,0.0),(10906,61,28.5000,15,0.0),(10907,75,7.7500,14,0.0),(10908,7,30.0000,20,0.0),(10908,52,7.0000,14,0.0),(10909,7,30.0000,12,0.0),(10909,16,17.4500,15,0.0),(10909,41,9.6500,5,0.0),(10910,19,9.2000,12,0.0),(10910,49,20.0000,10,0.0),(10910,61,28.5000,5,0.0),(10911,1,18.0000,10,0.0),(10911,17,39.0000,12,0.0),(10911,67,14.0000,15,0.0),(10912,11,21.0000,40,0.0),(10912,29,123.7900,60,0.0),(10913,4,22.0000,30,0.0),(10913,33,2.5000,40,0.0),(10913,58,13.2500,15,0.0),(10914,71,21.5000,25,0.0),(10915,17,39.0000,10,0.0),(10915,33,2.5000,30,0.0),(10915,54,7.4500,10,0.0),(10916,16,17.4500,6,0.0),(10916,32,32.0000,6,0.0),(10916,57,19.5000,20,0.0),(10917,30,25.8900,1,0.0),(10917,60,34.0000,10,0.0),(10918,1,18.0000,60,0.0),(10918,60,34.0000,25,0.0),(10919,16,17.4500,24,0.0),(10919,25,14.0000,24,0.0),(10919,40,18.4000,20,0.0),(10920,50,16.2500,24,0.0),(10921,35,18.0000,10,0.0),(10921,63,43.9000,40,0.0),(10922,17,39.0000,15,0.0),(10922,24,4.5000,35,0.0),(10923,42,14.0000,10,0.0),(10923,43,46.0000,10,0.0),(10923,67,14.0000,24,0.0),(10924,10,31.0000,20,0.0),(10924,28,45.6000,30,0.0),(10924,75,7.7500,6,0.0),(10925,36,19.0000,25,0.0),(10925,52,7.0000,12,0.0),(10926,11,21.0000,2,0.0),(10926,13,6.0000,10,0.0),(10926,19,9.2000,7,0.0),(10926,72,34.8000,10,0.0),(10927,20,81.0000,5,0.0),(10927,52,7.0000,5,0.0),(10927,76,18.0000,20,0.0),(10928,47,9.5000,5,0.0),(10928,76,18.0000,5,0.0),(10929,21,10.0000,60,0.0),(10929,75,7.7500,49,0.0),(10929,77,13.0000,15,0.0),(10930,21,10.0000,36,0.0),(10930,27,43.9000,25,0.0),(10930,55,24.0000,25,0.0),(10930,58,13.2500,30,0.0),(10931,13,6.0000,42,0.0),(10931,57,19.5000,30,0.0),(10932,16,17.4500,30,0.0),(10932,62,49.3000,14,0.0),(10932,72,34.8000,16,0.0),(10932,75,7.7500,20,0.0),(10933,53,32.8000,2,0.0),(10933,61,28.5000,30,0.0),(10934,6,25.0000,20,0.0),(10935,1,18.0000,21,0.0),(10935,18,62.5000,4,0.0),(10935,23,9.0000,8,0.0),(10936,36,19.0000,30,0.0),(10937,28,45.6000,8,0.0),(10937,34,14.0000,20,0.0),(10938,13,6.0000,20,0.0),(10938,43,46.0000,24,0.0),(10938,60,34.0000,49,0.0),(10938,71,21.5000,35,0.0),(10939,2,19.0000,10,0.0),(10939,67,14.0000,40,0.0),(10940,7,30.0000,8,0.0),(10940,13,6.0000,20,0.0),(10941,31,12.5000,44,0.0),(10941,62,49.3000,30,0.0),(10941,68,12.5000,80,0.0),(10941,72,34.8000,50,0.0),(10942,49,20.0000,28,0.0),(10943,13,6.0000,15,0.0),(10943,22,21.0000,21,0.0),(10943,46,12.0000,15,0.0),(10944,11,21.0000,5,0.0),(10944,44,19.4500,18,0.0),(10944,56,38.0000,18,0.0),(10945,13,6.0000,20,0.0),(10945,31,12.5000,10,0.0),(10946,10,31.0000,25,0.0),(10946,24,4.5000,25,0.0),(10946,77,13.0000,40,0.0),(10947,59,55.0000,4,0.0),(10948,50,16.2500,9,0.0),(10948,51,53.0000,40,0.0),(10948,55,24.0000,4,0.0),(10949,6,25.0000,12,0.0),(10949,10,31.0000,30,0.0),(10949,17,39.0000,6,0.0),(10949,62,49.3000,60,0.0),(10950,4,22.0000,5,0.0),(10951,33,2.5000,15,0.0),(10951,41,9.6500,6,0.0),(10951,75,7.7500,50,0.0),(10952,6,25.0000,16,0.0),(10952,28,45.6000,2,0.0),(10953,20,81.0000,50,0.0),(10953,31,12.5000,50,0.0),(10954,16,17.4500,28,0.0),(10954,31,12.5000,25,0.0),(10954,45,9.5000,30,0.0),(10954,60,34.0000,24,0.0),(10955,75,7.7500,12,0.0),(10956,21,10.0000,12,0.0),(10956,47,9.5000,14,0.0),(10956,51,53.0000,8,0.0),(10957,30,25.8900,30,0.0),(10957,35,18.0000,40,0.0),(10957,64,33.2500,8,0.0),(10958,5,21.3500,20,0.0),(10958,7,30.0000,6,0.0),(10958,72,34.8000,5,0.0),(10959,75,7.7500,20,0.0),(10960,24,4.5000,10,0.0),(10960,41,9.6500,24,0.0),(10961,52,7.0000,6,0.0),(10961,76,18.0000,60,0.0),(10962,7,30.0000,45,0.0),(10962,13,6.0000,77,0.0),(10962,53,32.8000,20,0.0),(10962,69,36.0000,9,0.0),(10962,76,18.0000,44,0.0),(10963,60,34.0000,2,0.0),(10964,18,62.5000,6,0.0),(10964,38,263.5000,5,0.0),(10964,69,36.0000,10,0.0),(10965,51,53.0000,16,0.0),(10966,37,26.0000,8,0.0),(10966,56,38.0000,12,0.0),(10966,62,49.3000,12,0.0),(10967,19,9.2000,12,0.0),(10967,49,20.0000,40,0.0),(10968,12,38.0000,30,0.0),(10968,24,4.5000,30,0.0),(10968,64,33.2500,4,0.0),(10969,46,12.0000,9,0.0),(10970,52,7.0000,40,0.0),(10971,29,123.7900,14,0.0),(10972,17,39.0000,6,0.0),(10972,33,2.5000,7,0.0),(10973,26,31.2300,5,0.0),(10973,41,9.6500,6,0.0),(10973,75,7.7500,10,0.0),(10974,63,43.9000,10,0.0),(10975,8,40.0000,16,0.0),(10975,75,7.7500,10,0.0),(10976,28,45.6000,20,0.0),(10977,39,18.0000,30,0.0),(10977,47,9.5000,30,0.0),(10977,51,53.0000,10,0.0),(10977,63,43.9000,20,0.0),(10978,8,40.0000,20,0.0),(10978,21,10.0000,40,0.0),(10978,40,18.4000,10,0.0),(10978,44,19.4500,6,0.0),(10979,7,30.0000,18,0.0),(10979,12,38.0000,20,0.0),(10979,24,4.5000,80,0.0),(10979,27,43.9000,30,0.0),(10979,31,12.5000,24,0.0),(10979,63,43.9000,35,0.0),(10980,75,7.7500,40,0.0),(10981,38,263.5000,60,0.0),(10982,7,30.0000,20,0.0),(10982,43,46.0000,9,0.0),(10983,13,6.0000,84,0.0),(10983,57,19.5000,15,0.0),(10984,16,17.4500,55,0.0),(10984,24,4.5000,20,0.0),(10984,36,19.0000,40,0.0),(10985,16,17.4500,36,0.0),(10985,18,62.5000,8,0.0),(10985,32,32.0000,35,0.0),(10986,11,21.0000,30,0.0),(10986,20,81.0000,15,0.0),(10986,76,18.0000,10,0.0),(10986,77,13.0000,15,0.0),(10987,7,30.0000,60,0.0),(10987,43,46.0000,6,0.0),(10987,72,34.8000,20,0.0),(10988,7,30.0000,60,0.0),(10988,62,49.3000,40,0.0),(10989,6,25.0000,40,0.0),(10989,11,21.0000,15,0.0),(10989,41,9.6500,4,0.0),(10990,21,10.0000,65,0.0),(10990,34,14.0000,60,0.0),(10990,55,24.0000,65,0.0),(10990,61,28.5000,66,0.0),(10991,2,19.0000,50,0.0),(10991,70,15.0000,20,0.0),(10991,76,18.0000,90,0.0),(10992,72,34.8000,2,0.0),(10993,29,123.7900,50,0.0),(10993,41,9.6500,35,0.0),(10994,59,55.0000,18,0.0),(10995,51,53.0000,20,0.0),(10995,60,34.0000,4,0.0),(10996,42,14.0000,40,0.0),(10997,32,32.0000,50,0.0),(10997,46,12.0000,20,0.0),(10997,52,7.0000,20,0.0),(10998,24,4.5000,12,0.0),(10998,61,28.5000,7,0.0),(10998,74,10.0000,20,0.0),(10998,75,7.7500,30,0.0),(10999,41,9.6500,20,0.0),(10999,51,53.0000,15,0.0),(10999,77,13.0000,21,0.0),(11000,4,22.0000,25,0.0),(11000,24,4.5000,30,0.0),(11000,77,13.0000,30,0.0),(11001,7,30.0000,60,0.0),(11001,22,21.0000,25,0.0),(11001,46,12.0000,25,0.0),(11001,55,24.0000,6,0.0),(11002,13,6.0000,56,0.0),(11002,35,18.0000,15,0.0),(11002,42,14.0000,24,0.0),(11002,55,24.0000,40,0.0),(11003,1,18.0000,4,0.0),(11003,40,18.4000,10,0.0),(11003,52,7.0000,10,0.0),(11004,26,31.2300,6,0.0),(11004,76,18.0000,6,0.0),(11005,1,18.0000,2,0.0),(11005,59,55.0000,10,0.0),(11006,1,18.0000,8,0.0),(11006,29,123.7900,2,0.0),(11007,8,40.0000,30,0.0),(11007,29,123.7900,10,0.0),(11007,42,14.0000,14,0.0),(11008,28,45.6000,70,0.0),(11008,34,14.0000,90,0.0),(11008,71,21.5000,21,0.0),(11009,24,4.5000,12,0.0),(11009,36,19.0000,18,0.0),(11009,60,34.0000,9,0.0),(11010,7,30.0000,20,0.0),(11010,24,4.5000,10,0.0),(11011,58,13.2500,40,0.0),(11011,71,21.5000,20,0.0),(11012,19,9.2000,50,0.0),(11012,60,34.0000,36,0.0),(11012,71,21.5000,60,0.0),(11013,23,9.0000,10,0.0),(11013,42,14.0000,4,0.0),(11013,45,9.5000,20,0.0),(11013,68,12.5000,2,0.0),(11014,41,9.6500,28,0.0),(11015,30,25.8900,15,0.0),(11015,77,13.0000,18,0.0),(11016,31,12.5000,15,0.0),(11016,36,19.0000,16,0.0),(11017,3,10.0000,25,0.0),(11017,59,55.0000,110,0.0),(11017,70,15.0000,30,0.0),(11018,12,38.0000,20,0.0),(11018,18,62.5000,10,0.0),(11018,56,38.0000,5,0.0),(11019,46,12.0000,3,0.0),(11019,49,20.0000,2,0.0),(11020,10,31.0000,24,0.0),(11021,2,19.0000,11,0.0),(11021,20,81.0000,15,0.0),(11021,26,31.2300,63,0.0),(11021,51,53.0000,44,0.0),(11021,72,34.8000,35,0.0),(11022,19,9.2000,35,0.0),(11022,69,36.0000,30,0.0),(11023,7,30.0000,4,0.0),(11023,43,46.0000,30,0.0),(11024,26,31.2300,12,0.0),(11024,33,2.5000,30,0.0),(11024,65,21.0500,21,0.0),(11024,71,21.5000,50,0.0),(11025,1,18.0000,10,0.0),(11025,13,6.0000,20,0.0),(11026,18,62.5000,8,0.0),(11026,51,53.0000,10,0.0),(11027,24,4.5000,30,0.0),(11027,62,49.3000,21,0.0),(11028,55,24.0000,35,0.0),(11028,59,55.0000,24,0.0),(11029,56,38.0000,20,0.0),(11029,63,43.9000,12,0.0),(11030,2,19.0000,100,0.0),(11030,5,21.3500,70,0.0),(11030,29,123.7900,60,0.0),(11030,59,55.0000,100,0.0),(11031,1,18.0000,45,0.0),(11031,13,6.0000,80,0.0),(11031,24,4.5000,21,0.0),(11031,64,33.2500,20,0.0),(11031,71,21.5000,16,0.0),(11032,36,19.0000,35,0.0),(11032,38,263.5000,25,0.0),(11032,59,55.0000,30,0.0),(11033,53,32.8000,70,0.0),(11033,69,36.0000,36,0.0),(11034,21,10.0000,15,0.0),(11034,44,19.4500,12,0.0),(11034,61,28.5000,6,0.0),(11035,1,18.0000,10,0.0),(11035,35,18.0000,60,0.0),(11035,42,14.0000,30,0.0),(11035,54,7.4500,10,0.0),(11036,13,6.0000,7,0.0),(11036,59,55.0000,30,0.0),(11037,70,15.0000,4,0.0),(11038,40,18.4000,5,0.0),(11038,52,7.0000,2,0.0),(11038,71,21.5000,30,0.0),(11039,28,45.6000,20,0.0),(11039,35,18.0000,24,0.0),(11039,49,20.0000,60,0.0),(11039,57,19.5000,28,0.0),(11040,21,10.0000,20,0.0),(11041,2,19.0000,30,0.0),(11041,63,43.9000,30,0.0),(11042,44,19.4500,15,0.0),(11042,61,28.5000,4,0.0),(11043,11,21.0000,10,0.0),(11044,62,49.3000,12,0.0),(11045,33,2.5000,15,0.0),(11045,51,53.0000,24,0.0),(11046,12,38.0000,20,0.0),(11046,32,32.0000,15,0.0),(11046,35,18.0000,18,0.0),(11047,1,18.0000,25,0.0),(11047,5,21.3500,30,0.0),(11048,68,12.5000,42,0.0),(11049,2,19.0000,10,0.0),(11049,12,38.0000,4,0.0),(11050,76,18.0000,50,0.0),(11051,24,4.5000,10,0.0),(11052,43,46.0000,30,0.0),(11052,61,28.5000,10,0.0),(11053,18,62.5000,35,0.0),(11053,32,32.0000,20,0.0),(11053,64,33.2500,25,0.0),(11054,33,2.5000,10,0.0),(11054,67,14.0000,20,0.0),(11055,24,4.5000,15,0.0),(11055,25,14.0000,15,0.0),(11055,51,53.0000,20,0.0),(11055,57,19.5000,20,0.0),(11056,7,30.0000,40,0.0),(11056,55,24.0000,35,0.0),(11056,60,34.0000,50,0.0),(11057,70,15.0000,3,0.0),(11058,21,10.0000,3,0.0),(11058,60,34.0000,21,0.0),(11058,61,28.5000,4,0.0),(11059,13,6.0000,30,0.0),(11059,17,39.0000,12,0.0),(11059,60,34.0000,35,0.0),(11060,60,34.0000,4,0.0),(11060,77,13.0000,10,0.0),(11061,60,34.0000,15,0.0),(11062,53,32.8000,10,0.0),(11062,70,15.0000,12,0.0),(11063,34,14.0000,30,0.0),(11063,40,18.4000,40,0.0),(11063,41,9.6500,30,0.0),(11064,17,39.0000,77,0.0),(11064,41,9.6500,12,0.0),(11064,53,32.8000,25,0.0),(11064,55,24.0000,4,0.0),(11064,68,12.5000,55,0.0),(11065,30,25.8900,4,0.0),(11065,54,7.4500,20,0.0),(11066,16,17.4500,3,0.0),(11066,19,9.2000,42,0.0),(11066,34,14.0000,35,0.0),(11067,41,9.6500,9,0.0),(11068,28,45.6000,8,0.0),(11068,43,46.0000,36,0.0),(11068,77,13.0000,28,0.0),(11069,39,18.0000,20,0.0),(11070,1,18.0000,40,0.0),(11070,2,19.0000,20,0.0),(11070,16,17.4500,30,0.0),(11070,31,12.5000,20,0.0),(11071,7,30.0000,15,0.0),(11071,13,6.0000,10,0.0),(11072,2,19.0000,8,0.0),(11072,41,9.6500,40,0.0),(11072,50,16.2500,22,0.0),(11072,64,33.2500,130,0.0),(11073,11,21.0000,10,0.0),(11073,24,4.5000,20,0.0),(11074,16,17.4500,14,0.0),(11075,2,19.0000,10,0.0),(11075,46,12.0000,30,0.0),(11075,76,18.0000,2,0.0),(11076,6,25.0000,20,0.0),(11076,14,23.2500,20,0.0),(11076,19,9.2000,10,0.0),(11077,2,19.0000,24,0.0),(11077,3,10.0000,4,0.0),(11077,4,22.0000,1,0.0),(11077,6,25.0000,1,0.0),(11077,7,30.0000,1,0.0),(11077,8,40.0000,2,0.0),(11077,10,31.0000,1,0.0),(11077,12,38.0000,2,0.0),(11077,13,6.0000,4,0.0),(11077,14,23.2500,1,0.0),(11077,16,17.4500,2,0.0),(11077,20,81.0000,1,0.0),(11077,23,9.0000,2,0.0),(11077,32,32.0000,1,0.0),(11077,39,18.0000,2,0.0),(11077,41,9.6500,3,0.0),(11077,46,12.0000,3,0.0),(11077,52,7.0000,2,0.0),(11077,55,24.0000,2,0.0),(11077,60,34.0000,2,0.0),(11077,64,33.2500,2,0.0),(11077,66,17.0000,1,0.0),(11077,73,15.0000,2,0.0),(11077,75,7.7500,4,0.0),(11077,77,13.0000,2,0.0);

DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders` (
	`OrderID` INTEGER NOT NULL,
	`CustomerID` INTEGER DEFAULT NULL,
	`EmployeeID` INTEGER DEFAULT NULL,
	`OrderDate` TEXT DEFAULT NULL,
	`RequiredDate` TEXT DEFAULT NULL,
	`ShippedDate` TEXT DEFAULT NULL,
	`ShipVia` INTEGER DEFAULT NULL,
	`Freight` NUMERIC DEFAULT '0.0000',
	`ShipName` TEXT DEFAULT NULL,
	`ShipAddress` TEXT DEFAULT NULL,
	`ShipCity` TEXT DEFAULT NULL,
	`ShipRegion` TEXT DEFAULT NULL,
	`ShipPostalCode` TEXT DEFAULT NULL,
	`ShipCountry` TEXT DEFAULT NULL,
	CONSTRAINT `ORDERS_PK` PRIMARY KEY (`OrderID`),
	CONSTRAINT `FK_Orders_Customers` FOREIGN KEY (`CustomerID`) REFERENCES `Customers`(`id`),
	CONSTRAINT `FK_Orders_Employees` FOREIGN KEY (`EmployeeID`) REFERENCES `Employees`(`EmployeeID`),
	CONSTRAINT `FK_Orders_Shippers` FOREIGN KEY (`ShipVia`) REFERENCES `Shippers`(`ShipperID`)
);
INSERT INTO `Orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`RequiredDate`,`ShippedDate`,`ShipVia`,`Freight`,`ShipName`,`ShipAddress`,`ShipCity`,`ShipRegion`,`ShipPostalCode`,`ShipCountry`) VALUES
(10248,87,5,'1996-07-04 00:00:00','1996-08-01 00:00:00','1996-07-16 00:00:00',3,32.3800,'Vins et alcools Chevalier','59 rue de l-Abbaye','Reims',NULL,'51100','France')
,(10249,79,6,'1996-07-05 00:00:00','1996-08-16 00:00:00','1996-07-10 00:00:00',1,11.6100,'Toms Spezialitten','Luisenstr. 48','Mnster',NULL,'44087','Germany')
,(10250,34,4,'1996-07-08 00:00:00','1996-08-05 00:00:00','1996-07-12 00:00:00',2,65.8300,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10251,86,3,'1996-07-08 00:00:00','1996-08-05 00:00:00','1996-07-15 00:00:00',1,41.3400,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10252,76,4,'1996-07-09 00:00:00','1996-08-06 00:00:00','1996-07-11 00:00:00',2,51.3000,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10253,34,3,'1996-07-10 00:00:00','1996-07-24 00:00:00','1996-07-16 00:00:00',2,58.1700,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10254,14,5,'1996-07-11 00:00:00','1996-08-08 00:00:00','1996-07-23 00:00:00',2,22.9800,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland')
,(10255,68,9,'1996-07-12 00:00:00','1996-08-09 00:00:00','1996-07-15 00:00:00',3,148.3300,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(10256,90,3,'1996-07-15 00:00:00','1996-08-12 00:00:00','1996-07-17 00:00:00',2,13.9700,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil')
,(10257,35,4,'1996-07-16 00:00:00','1996-08-13 00:00:00','1996-07-22 00:00:00',3,81.9100,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10258,20,1,'1996-07-17 00:00:00','1996-08-14 00:00:00','1996-07-23 00:00:00',1,140.5100,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10259,13,4,'1996-07-18 00:00:00','1996-08-15 00:00:00','1996-07-25 00:00:00',3,3.2500,'Centro comercial Moctezuma','Sierras de Granada 9993','Mxico D.F.',NULL,'5022','Mexico')
,(10260,56,4,'1996-07-19 00:00:00','1996-08-16 00:00:00','1996-07-29 00:00:00',1,55.0900,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(10261,61,4,'1996-07-19 00:00:00','1996-08-16 00:00:00','1996-07-30 00:00:00',2,3.0500,'Que Delcia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil')
,(10262,65,8,'1996-07-22 00:00:00','1996-08-19 00:00:00','1996-07-25 00:00:00',3,48.2900,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10263,20,9,'1996-07-23 00:00:00','1996-08-20 00:00:00','1996-07-31 00:00:00',3,146.0600,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10264,24,6,'1996-07-24 00:00:00','1996-08-21 00:00:00','1996-08-23 00:00:00',3,3.6700,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10265,7,2,'1996-07-25 00:00:00','1996-08-22 00:00:00','1996-08-12 00:00:00',1,55.2800,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10266,89,3,'1996-07-26 00:00:00','1996-09-06 00:00:00','1996-07-31 00:00:00',3,25.7300,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10267,25,4,'1996-07-29 00:00:00','1996-08-26 00:00:00','1996-08-06 00:00:00',1,208.5800,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10268,33,8,'1996-07-30 00:00:00','1996-08-27 00:00:00','1996-08-02 00:00:00',3,66.2900,'GROSELLA-Restaurante','5 Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela')
,(10269,91,5,'1996-07-31 00:00:00','1996-08-14 00:00:00','1996-08-09 00:00:00',1,4.5600,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10270,89,1,'1996-08-01 00:00:00','1996-08-29 00:00:00','1996-08-02 00:00:00',1,136.5400,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10271,75,6,'1996-08-01 00:00:00','1996-08-29 00:00:00','1996-08-30 00:00:00',2,4.5400,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA')
,(10272,65,6,'1996-08-02 00:00:00','1996-08-30 00:00:00','1996-08-06 00:00:00',2,98.0300,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10273,63,3,'1996-08-05 00:00:00','1996-09-02 00:00:00','1996-08-12 00:00:00',3,76.0700,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10274,87,6,'1996-08-06 00:00:00','1996-09-03 00:00:00','1996-08-16 00:00:00',1,6.0100,'Vins et alcools Chevalier','59 rue de l-Abbaye','Reims',NULL,'51100','France')
,(10275,49,1,'1996-08-07 00:00:00','1996-09-04 00:00:00','1996-08-09 00:00:00',1,26.9300,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10276,80,8,'1996-08-08 00:00:00','1996-08-22 00:00:00','1996-08-14 00:00:00',3,13.8400,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(10277,52,2,'1996-08-09 00:00:00','1996-09-06 00:00:00','1996-08-13 00:00:00',3,125.7700,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'4179','Germany')
,(10278,5,8,'1996-08-12 00:00:00','1996-09-09 00:00:00','1996-08-16 00:00:00',2,92.6900,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10279,44,8,'1996-08-13 00:00:00','1996-09-10 00:00:00','1996-08-16 00:00:00',2,25.8300,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10280,5,2,'1996-08-14 00:00:00','1996-09-11 00:00:00','1996-09-12 00:00:00',1,8.9800,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10281,69,4,'1996-08-14 00:00:00','1996-08-28 00:00:00','1996-08-21 00:00:00',1,2.9400,'Romero y tomillo','Gran Va, 1','Madrid',NULL,'28001','Spain')
,(10282,69,4,'1996-08-15 00:00:00','1996-09-12 00:00:00','1996-08-21 00:00:00',1,12.6900,'Romero y tomillo','Gran Va, 1','Madrid',NULL,'28001','Spain')
,(10283,46,3,'1996-08-16 00:00:00','1996-09-13 00:00:00','1996-08-23 00:00:00',3,84.8100,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10284,44,4,'1996-08-19 00:00:00','1996-09-16 00:00:00','1996-08-27 00:00:00',1,76.5600,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10285,63,1,'1996-08-20 00:00:00','1996-09-17 00:00:00','1996-08-26 00:00:00',2,76.8300,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10286,63,8,'1996-08-21 00:00:00','1996-09-18 00:00:00','1996-08-30 00:00:00',3,229.2400,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10287,67,8,'1996-08-22 00:00:00','1996-09-19 00:00:00','1996-08-28 00:00:00',3,12.7600,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10288,66,4,'1996-08-23 00:00:00','1996-09-20 00:00:00','1996-09-03 00:00:00',1,7.4500,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10289,11,7,'1996-08-26 00:00:00','1996-09-23 00:00:00','1996-08-28 00:00:00',3,22.7700,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(10290,15,8,'1996-08-27 00:00:00','1996-09-24 00:00:00','1996-09-03 00:00:00',1,79.7000,'Comrcio Mineiro','Av. dos Lusadas, 23','Sao Paulo','SP','05432-043','Brazil')
,(10291,61,6,'1996-08-27 00:00:00','1996-09-24 00:00:00','1996-09-04 00:00:00',2,6.4000,'Que Delcia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil')
,(10292,81,1,'1996-08-28 00:00:00','1996-09-25 00:00:00','1996-09-02 00:00:00',2,1.3500,'Tradiao Hipermercados','Av. Ins de Castro, 414','Sao Paulo','SP','05634-030','Brazil')
,(10293,80,1,'1996-08-29 00:00:00','1996-09-26 00:00:00','1996-09-11 00:00:00',3,21.1800,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(10294,65,4,'1996-08-30 00:00:00','1996-09-27 00:00:00','1996-09-05 00:00:00',2,147.2600,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10295,87,2,'1996-09-02 00:00:00','1996-09-30 00:00:00','1996-09-10 00:00:00',2,1.1500,'Vins et alcools Chevalier','59 rue de l-Abbaye','Reims',NULL,'51100','France')
,(10296,46,6,'1996-09-03 00:00:00','1996-10-01 00:00:00','1996-09-11 00:00:00',1,0.1200,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10297,7,5,'1996-09-04 00:00:00','1996-10-16 00:00:00','1996-09-10 00:00:00',2,5.7400,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10298,37,6,'1996-09-05 00:00:00','1996-10-03 00:00:00','1996-09-11 00:00:00',2,168.2200,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10299,67,4,'1996-09-06 00:00:00','1996-10-04 00:00:00','1996-09-13 00:00:00',2,29.7600,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10300,49,2,'1996-09-09 00:00:00','1996-10-07 00:00:00','1996-09-18 00:00:00',2,17.6800,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10301,88,8,'1996-09-09 00:00:00','1996-10-07 00:00:00','1996-09-17 00:00:00',2,45.0800,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(10302,76,4,'1996-09-10 00:00:00','1996-10-08 00:00:00','1996-10-09 00:00:00',2,6.2700,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10303,30,7,'1996-09-11 00:00:00','1996-10-09 00:00:00','1996-09-18 00:00:00',2,107.8300,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(10304,80,1,'1996-09-12 00:00:00','1996-10-10 00:00:00','1996-09-17 00:00:00',2,63.7900,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(10305,55,8,'1996-09-13 00:00:00','1996-10-11 00:00:00','1996-10-09 00:00:00',3,257.6200,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(10306,69,1,'1996-09-16 00:00:00','1996-10-14 00:00:00','1996-09-23 00:00:00',3,7.5600,'Romero y tomillo','Gran Va, 1','Madrid',NULL,'28001','Spain')
,(10307,48,2,'1996-09-17 00:00:00','1996-10-15 00:00:00','1996-09-25 00:00:00',2,0.5600,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA')
,(10308,2,7,'1996-09-18 00:00:00','1996-10-16 00:00:00','1996-09-24 00:00:00',3,1.6100,'Ana Trujillo Emparedados y helados','Avda. de la Constitucin 2222','Mxico D.F.',NULL,'5021','Mexico')
,(10309,37,3,'1996-09-19 00:00:00','1996-10-17 00:00:00','1996-10-23 00:00:00',1,47.3000,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10310,77,8,'1996-09-20 00:00:00','1996-10-18 00:00:00','1996-09-27 00:00:00',2,17.5200,'The Big Cheese','89 Jefferson Way Suite 2','Portland','OR','97201','USA')
,(10311,18,1,'1996-09-20 00:00:00','1996-10-04 00:00:00','1996-09-26 00:00:00',3,24.6900,'Du monde entier','67, rue des Cinquante Otages','Nantes',NULL,'44000','France')
,(10312,88,2,'1996-09-23 00:00:00','1996-10-21 00:00:00','1996-10-03 00:00:00',2,40.2600,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(10313,63,2,'1996-09-24 00:00:00','1996-10-22 00:00:00','1996-10-04 00:00:00',2,1.9600,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10314,65,1,'1996-09-25 00:00:00','1996-10-23 00:00:00','1996-10-04 00:00:00',2,74.1600,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10315,38,4,'1996-09-26 00:00:00','1996-10-24 00:00:00','1996-10-03 00:00:00',2,41.7600,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10316,65,1,'1996-09-27 00:00:00','1996-10-25 00:00:00','1996-10-08 00:00:00',3,150.1500,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10317,48,6,'1996-09-30 00:00:00','1996-10-28 00:00:00','1996-10-10 00:00:00',1,12.6900,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA')
,(10318,38,8,'1996-10-01 00:00:00','1996-10-29 00:00:00','1996-10-04 00:00:00',2,4.7300,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10319,80,7,'1996-10-02 00:00:00','1996-10-30 00:00:00','1996-10-11 00:00:00',3,64.5000,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(10320,89,5,'1996-10-03 00:00:00','1996-10-17 00:00:00','1996-10-18 00:00:00',3,34.5700,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10321,38,3,'1996-10-03 00:00:00','1996-10-31 00:00:00','1996-10-11 00:00:00',2,3.4300,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10322,58,7,'1996-10-04 00:00:00','1996-11-01 00:00:00','1996-10-23 00:00:00',3,0.4000,'Pericles Comidas clsicas','Calle Dr. Jorge Cash 321','Mxico D.F.',NULL,'5033','Mexico')
,(10323,39,4,'1996-10-07 00:00:00','1996-11-04 00:00:00','1996-10-14 00:00:00',1,4.8800,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10324,71,9,'1996-10-08 00:00:00','1996-11-05 00:00:00','1996-10-10 00:00:00',1,214.2700,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10325,39,1,'1996-10-09 00:00:00','1996-10-23 00:00:00','1996-10-14 00:00:00',3,64.8600,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10326,8,4,'1996-10-10 00:00:00','1996-11-07 00:00:00','1996-10-14 00:00:00',2,77.9200,'Blido Comidas preparadas','C/ Araquil, 67','Madrid',NULL,'28023','Spain')
,(10327,24,2,'1996-10-11 00:00:00','1996-11-08 00:00:00','1996-10-14 00:00:00',1,63.3600,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10328,28,4,'1996-10-14 00:00:00','1996-11-11 00:00:00','1996-10-17 00:00:00',3,87.0300,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal')
,(10329,75,4,'1996-10-15 00:00:00','1996-11-26 00:00:00','1996-10-23 00:00:00',2,191.6700,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA')
,(10330,46,3,'1996-10-16 00:00:00','1996-11-13 00:00:00','1996-10-28 00:00:00',1,12.7500,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10331,9,9,'1996-10-16 00:00:00','1996-11-27 00:00:00','1996-10-21 00:00:00',1,10.1900,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10332,51,3,'1996-10-17 00:00:00','1996-11-28 00:00:00','1996-10-21 00:00:00',2,52.8400,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10333,89,5,'1996-10-18 00:00:00','1996-11-15 00:00:00','1996-10-25 00:00:00',3,0.5900,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10334,86,8,'1996-10-21 00:00:00','1996-11-18 00:00:00','1996-10-28 00:00:00',2,8.5600,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10335,37,7,'1996-10-22 00:00:00','1996-11-19 00:00:00','1996-10-24 00:00:00',2,42.1100,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10336,60,7,'1996-10-23 00:00:00','1996-11-20 00:00:00','1996-10-25 00:00:00',2,15.5100,'Princesa Isabel Vinhos','Estrada da sade n. 58','Lisboa',NULL,'1756','Portugal')
,(10337,25,4,'1996-10-24 00:00:00','1996-11-21 00:00:00','1996-10-29 00:00:00',3,108.2600,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10338,55,4,'1996-10-25 00:00:00','1996-11-22 00:00:00','1996-10-29 00:00:00',3,84.2100,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(10339,51,2,'1996-10-28 00:00:00','1996-11-25 00:00:00','1996-11-04 00:00:00',2,15.6600,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10340,9,1,'1996-10-29 00:00:00','1996-11-26 00:00:00','1996-11-08 00:00:00',3,166.3100,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10341,73,7,'1996-10-29 00:00:00','1996-11-26 00:00:00','1996-11-05 00:00:00',3,26.7800,'Simons bistro','Vinbltet 34','Kobenhavn',NULL,'1734','Denmark')
,(10342,25,4,'1996-10-30 00:00:00','1996-11-13 00:00:00','1996-11-04 00:00:00',2,54.8300,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10343,44,4,'1996-10-31 00:00:00','1996-11-28 00:00:00','1996-11-06 00:00:00',1,110.3700,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10344,91,4,'1996-11-01 00:00:00','1996-11-29 00:00:00','1996-11-05 00:00:00',2,23.2900,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10345,63,2,'1996-11-04 00:00:00','1996-12-02 00:00:00','1996-11-11 00:00:00',2,249.0600,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10346,65,3,'1996-11-05 00:00:00','1996-12-17 00:00:00','1996-11-08 00:00:00',3,142.0800,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10347,21,4,'1996-11-06 00:00:00','1996-12-04 00:00:00','1996-11-08 00:00:00',3,3.1000,'Familia Arquibaldo','Rua Ors, 92','Sao Paulo','SP','05442-030','Brazil')
,(10348,88,4,'1996-11-07 00:00:00','1996-12-05 00:00:00','1996-11-15 00:00:00',2,0.7800,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(10349,75,7,'1996-11-08 00:00:00','1996-12-06 00:00:00','1996-11-15 00:00:00',1,8.6300,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA')
,(10350,41,6,'1996-11-11 00:00:00','1996-12-09 00:00:00','1996-12-03 00:00:00',2,64.1900,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10351,20,1,'1996-11-11 00:00:00','1996-12-09 00:00:00','1996-11-20 00:00:00',1,162.3300,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10352,28,3,'1996-11-12 00:00:00','1996-11-26 00:00:00','1996-11-18 00:00:00',3,1.3000,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal')
,(10353,59,7,'1996-11-13 00:00:00','1996-12-11 00:00:00','1996-11-25 00:00:00',3,360.6300,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(10354,58,8,'1996-11-14 00:00:00','1996-12-12 00:00:00','1996-11-20 00:00:00',3,53.8000,'Pericles Comidas clsicas','Calle Dr. Jorge Cash 321','Mxico D.F.',NULL,'5033','Mexico')
,(10355,4,6,'1996-11-15 00:00:00','1996-12-13 00:00:00','1996-11-20 00:00:00',1,41.9500,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10356,88,6,'1996-11-18 00:00:00','1996-12-16 00:00:00','1996-11-27 00:00:00',2,36.7100,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(10357,46,1,'1996-11-19 00:00:00','1996-12-17 00:00:00','1996-12-02 00:00:00',3,34.8800,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10358,41,5,'1996-11-20 00:00:00','1996-12-18 00:00:00','1996-11-27 00:00:00',1,19.6400,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10359,72,5,'1996-11-21 00:00:00','1996-12-19 00:00:00','1996-11-26 00:00:00',3,288.4300,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK')
,(10360,7,4,'1996-11-22 00:00:00','1996-12-20 00:00:00','1996-12-02 00:00:00',3,131.7000,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10361,63,1,'1996-11-22 00:00:00','1996-12-20 00:00:00','1996-12-03 00:00:00',2,183.1700,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10362,9,3,'1996-11-25 00:00:00','1996-12-23 00:00:00','1996-11-28 00:00:00',1,96.0400,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10363,17,4,'1996-11-26 00:00:00','1996-12-24 00:00:00','1996-12-04 00:00:00',3,30.5400,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany')
,(10364,19,1,'1996-11-26 00:00:00','1997-01-07 00:00:00','1996-12-04 00:00:00',1,71.9700,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK')
,(10365,3,3,'1996-11-27 00:00:00','1996-12-25 00:00:00','1996-12-02 00:00:00',2,22.0000,'Antonio Moreno Taquera','Mataderos 2312','Mxico D.F.',NULL,'5023','Mexico')
,(10366,29,8,'1996-11-28 00:00:00','1997-01-09 00:00:00','1996-12-30 00:00:00',2,10.1400,'Galera del gastronmo','Rambla de Catalua, 23','Barcelona',NULL,'8022','Spain')
,(10367,83,7,'1996-11-28 00:00:00','1996-12-26 00:00:00','1996-12-02 00:00:00',3,13.5500,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10368,20,2,'1996-11-29 00:00:00','1996-12-27 00:00:00','1996-12-02 00:00:00',2,101.9500,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10369,75,8,'1996-12-02 00:00:00','1996-12-30 00:00:00','1996-12-09 00:00:00',2,195.6800,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA')
,(10370,14,6,'1996-12-03 00:00:00','1996-12-31 00:00:00','1996-12-27 00:00:00',2,1.1700,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland')
,(10371,41,1,'1996-12-03 00:00:00','1996-12-31 00:00:00','1996-12-24 00:00:00',1,0.4500,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10372,62,5,'1996-12-04 00:00:00','1997-01-01 00:00:00','1996-12-09 00:00:00',2,890.7800,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10373,37,4,'1996-12-05 00:00:00','1997-01-02 00:00:00','1996-12-11 00:00:00',3,124.1200,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10374,93,1,'1996-12-05 00:00:00','1997-01-02 00:00:00','1996-12-09 00:00:00',3,3.9400,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland')
,(10375,36,3,'1996-12-06 00:00:00','1997-01-03 00:00:00','1996-12-09 00:00:00',2,20.1200,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA')
,(10376,51,1,'1996-12-09 00:00:00','1997-01-06 00:00:00','1996-12-13 00:00:00',2,20.3900,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10377,72,1,'1996-12-09 00:00:00','1997-01-06 00:00:00','1996-12-13 00:00:00',3,22.2100,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK')
,(10378,24,5,'1996-12-10 00:00:00','1997-01-07 00:00:00','1996-12-19 00:00:00',3,5.4400,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10379,61,2,'1996-12-11 00:00:00','1997-01-08 00:00:00','1996-12-13 00:00:00',1,45.0300,'Que Delcia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil')
,(10380,37,8,'1996-12-12 00:00:00','1997-01-09 00:00:00','1997-01-16 00:00:00',3,35.0300,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10381,46,3,'1996-12-12 00:00:00','1997-01-09 00:00:00','1996-12-13 00:00:00',3,7.9900,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10382,20,4,'1996-12-13 00:00:00','1997-01-10 00:00:00','1996-12-16 00:00:00',1,94.7700,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10383,4,8,'1996-12-16 00:00:00','1997-01-13 00:00:00','1996-12-18 00:00:00',3,34.2400,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10384,5,3,'1996-12-16 00:00:00','1997-01-13 00:00:00','1996-12-20 00:00:00',3,168.6400,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10385,75,1,'1996-12-17 00:00:00','1997-01-14 00:00:00','1996-12-23 00:00:00',2,30.9600,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA')
,(10386,21,9,'1996-12-18 00:00:00','1997-01-01 00:00:00','1996-12-25 00:00:00',3,13.9900,'Familia Arquibaldo','Rua Ors, 92','Sao Paulo','SP','05442-030','Brazil')
,(10387,70,1,'1996-12-18 00:00:00','1997-01-15 00:00:00','1996-12-20 00:00:00',2,93.6300,'Sant Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway')
,(10388,72,2,'1996-12-19 00:00:00','1997-01-16 00:00:00','1996-12-20 00:00:00',1,34.8600,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK')
,(10389,10,4,'1996-12-20 00:00:00','1997-01-17 00:00:00','1996-12-24 00:00:00',2,47.4200,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10390,20,6,'1996-12-23 00:00:00','1997-01-20 00:00:00','1996-12-26 00:00:00',1,126.3800,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10391,17,3,'1996-12-23 00:00:00','1997-01-20 00:00:00','1996-12-31 00:00:00',3,5.4500,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany')
,(10392,59,2,'1996-12-24 00:00:00','1997-01-21 00:00:00','1997-01-01 00:00:00',3,122.4600,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(10393,71,1,'1996-12-25 00:00:00','1997-01-22 00:00:00','1997-01-03 00:00:00',3,126.5600,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10394,36,1,'1996-12-25 00:00:00','1997-01-22 00:00:00','1997-01-03 00:00:00',3,30.3400,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA')
,(10395,35,6,'1996-12-26 00:00:00','1997-01-23 00:00:00','1997-01-03 00:00:00',1,184.4100,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10396,25,1,'1996-12-27 00:00:00','1997-01-10 00:00:00','1997-01-06 00:00:00',3,135.3500,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10397,60,5,'1996-12-27 00:00:00','1997-01-24 00:00:00','1997-01-02 00:00:00',1,60.2600,'Princesa Isabel Vinhos','Estrada da sade n. 58','Lisboa',NULL,'1756','Portugal')
,(10398,71,2,'1996-12-30 00:00:00','1997-01-27 00:00:00','1997-01-09 00:00:00',3,89.1600,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10399,83,8,'1996-12-31 00:00:00','1997-01-14 00:00:00','1997-01-08 00:00:00',3,27.3600,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10400,19,1,'1997-01-01 00:00:00','1997-01-29 00:00:00','1997-01-16 00:00:00',3,83.9300,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK')
,(10401,65,1,'1997-01-01 00:00:00','1997-01-29 00:00:00','1997-01-10 00:00:00',1,12.5100,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10402,20,8,'1997-01-02 00:00:00','1997-02-13 00:00:00','1997-01-10 00:00:00',2,67.8800,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10403,20,4,'1997-01-03 00:00:00','1997-01-31 00:00:00','1997-01-09 00:00:00',3,73.7900,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10404,49,2,'1997-01-03 00:00:00','1997-01-31 00:00:00','1997-01-08 00:00:00',1,155.9700,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10405,47,1,'1997-01-06 00:00:00','1997-02-03 00:00:00','1997-01-22 00:00:00',1,34.8200,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10406,62,7,'1997-01-07 00:00:00','1997-02-18 00:00:00','1997-01-13 00:00:00',1,108.0400,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10407,56,2,'1997-01-07 00:00:00','1997-02-04 00:00:00','1997-01-30 00:00:00',2,91.4800,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(10408,23,8,'1997-01-08 00:00:00','1997-02-05 00:00:00','1997-01-14 00:00:00',1,11.2600,'Folies gourmandes','184, chausse de Tournai','Lille',NULL,'59000','France')
,(10409,54,3,'1997-01-09 00:00:00','1997-02-06 00:00:00','1997-01-14 00:00:00',1,29.8300,'Ocano Atlntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina')
,(10410,10,3,'1997-01-10 00:00:00','1997-02-07 00:00:00','1997-01-15 00:00:00',3,2.4000,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10411,10,9,'1997-01-10 00:00:00','1997-02-07 00:00:00','1997-01-21 00:00:00',3,23.6500,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10412,89,8,'1997-01-13 00:00:00','1997-02-10 00:00:00','1997-01-15 00:00:00',2,3.7700,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10413,41,3,'1997-01-14 00:00:00','1997-02-11 00:00:00','1997-01-16 00:00:00',2,95.6600,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10414,21,2,'1997-01-14 00:00:00','1997-02-11 00:00:00','1997-01-17 00:00:00',3,21.4800,'Familia Arquibaldo','Rua Ors, 92','Sao Paulo','SP','05442-030','Brazil')
,(10415,36,3,'1997-01-15 00:00:00','1997-02-12 00:00:00','1997-01-24 00:00:00',1,0.2000,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA')
,(10416,89,8,'1997-01-16 00:00:00','1997-02-13 00:00:00','1997-01-27 00:00:00',3,22.7200,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10417,73,4,'1997-01-16 00:00:00','1997-02-13 00:00:00','1997-01-28 00:00:00',3,70.2900,'Simons bistro','Vinbltet 34','Kobenhavn',NULL,'1734','Denmark')
,(10418,63,4,'1997-01-17 00:00:00','1997-02-14 00:00:00','1997-01-24 00:00:00',1,17.5500,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10419,68,4,'1997-01-20 00:00:00','1997-02-17 00:00:00','1997-01-30 00:00:00',2,137.3500,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(10420,90,3,'1997-01-21 00:00:00','1997-02-18 00:00:00','1997-01-27 00:00:00',1,44.1200,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil')
,(10421,61,8,'1997-01-21 00:00:00','1997-03-04 00:00:00','1997-01-27 00:00:00',1,99.2300,'Que Delcia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil')
,(10422,27,2,'1997-01-22 00:00:00','1997-02-19 00:00:00','1997-01-31 00:00:00',1,3.0200,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy')
,(10423,31,6,'1997-01-23 00:00:00','1997-02-06 00:00:00','1997-02-24 00:00:00',3,24.5000,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil')
,(10424,51,7,'1997-01-23 00:00:00','1997-02-20 00:00:00','1997-01-27 00:00:00',2,370.6100,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10425,41,6,'1997-01-24 00:00:00','1997-02-21 00:00:00','1997-02-14 00:00:00',2,7.9300,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10426,29,4,'1997-01-27 00:00:00','1997-02-24 00:00:00','1997-02-06 00:00:00',1,18.6900,'Galera del gastronmo','Rambla de Catalua, 23','Barcelona',NULL,'8022','Spain')
,(10427,59,4,'1997-01-27 00:00:00','1997-02-24 00:00:00','1997-03-03 00:00:00',2,31.2900,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(10428,66,7,'1997-01-28 00:00:00','1997-02-25 00:00:00','1997-02-04 00:00:00',1,11.0900,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10429,37,3,'1997-01-29 00:00:00','1997-03-12 00:00:00','1997-02-07 00:00:00',2,56.6300,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10430,20,4,'1997-01-30 00:00:00','1997-02-13 00:00:00','1997-02-03 00:00:00',1,458.7800,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10431,10,4,'1997-01-30 00:00:00','1997-02-13 00:00:00','1997-02-07 00:00:00',2,44.1700,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10432,75,3,'1997-01-31 00:00:00','1997-02-14 00:00:00','1997-02-07 00:00:00',2,4.3400,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA')
,(10433,60,3,'1997-02-03 00:00:00','1997-03-03 00:00:00','1997-03-04 00:00:00',3,73.8300,'Princesa Isabel Vinhos','Estrada da sade n. 58','Lisboa',NULL,'1756','Portugal')
,(10434,24,3,'1997-02-03 00:00:00','1997-03-03 00:00:00','1997-02-13 00:00:00',2,17.9200,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10435,16,8,'1997-02-04 00:00:00','1997-03-18 00:00:00','1997-02-07 00:00:00',2,9.2100,'Consolidated Holdings','Berkeley Gardens 12 Brewery','London',NULL,'WX1 6LT','UK')
,(10436,7,3,'1997-02-05 00:00:00','1997-03-05 00:00:00','1997-02-11 00:00:00',2,156.6600,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10437,89,8,'1997-02-05 00:00:00','1997-03-05 00:00:00','1997-02-12 00:00:00',1,19.9700,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10438,79,3,'1997-02-06 00:00:00','1997-03-06 00:00:00','1997-02-14 00:00:00',2,8.2400,'Toms Spezialitten','Luisenstr. 48','Mnster',NULL,'44087','Germany')
,(10439,51,6,'1997-02-07 00:00:00','1997-03-07 00:00:00','1997-02-10 00:00:00',3,4.0700,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10440,71,4,'1997-02-10 00:00:00','1997-03-10 00:00:00','1997-02-28 00:00:00',2,86.5300,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10441,55,3,'1997-02-10 00:00:00','1997-03-24 00:00:00','1997-03-14 00:00:00',2,73.0200,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(10442,20,3,'1997-02-11 00:00:00','1997-03-11 00:00:00','1997-02-18 00:00:00',2,47.9400,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10443,66,8,'1997-02-12 00:00:00','1997-03-12 00:00:00','1997-02-14 00:00:00',1,13.9500,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10444,5,3,'1997-02-12 00:00:00','1997-03-12 00:00:00','1997-02-21 00:00:00',3,3.5000,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10445,5,3,'1997-02-13 00:00:00','1997-03-13 00:00:00','1997-02-20 00:00:00',1,9.3000,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10446,79,6,'1997-02-14 00:00:00','1997-03-14 00:00:00','1997-02-19 00:00:00',1,14.6800,'Toms Spezialitten','Luisenstr. 48','Mnster',NULL,'44087','Germany')
,(10447,67,4,'1997-02-14 00:00:00','1997-03-14 00:00:00','1997-03-07 00:00:00',2,68.6600,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10448,64,4,'1997-02-17 00:00:00','1997-03-17 00:00:00','1997-02-24 00:00:00',2,38.8200,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina')
,(10449,7,3,'1997-02-18 00:00:00','1997-03-18 00:00:00','1997-02-27 00:00:00',2,53.3000,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10450,86,8,'1997-02-19 00:00:00','1997-03-19 00:00:00','1997-03-11 00:00:00',2,7.2300,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10451,63,4,'1997-02-19 00:00:00','1997-03-05 00:00:00','1997-03-12 00:00:00',3,189.0900,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10452,71,8,'1997-02-20 00:00:00','1997-03-20 00:00:00','1997-02-26 00:00:00',1,140.2600,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10453,4,1,'1997-02-21 00:00:00','1997-03-21 00:00:00','1997-02-26 00:00:00',2,25.3600,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10454,41,4,'1997-02-21 00:00:00','1997-03-21 00:00:00','1997-02-25 00:00:00',3,2.7400,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10455,89,8,'1997-02-24 00:00:00','1997-04-07 00:00:00','1997-03-03 00:00:00',2,180.4500,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10456,39,8,'1997-02-25 00:00:00','1997-04-08 00:00:00','1997-02-28 00:00:00',2,8.1200,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10457,39,2,'1997-02-25 00:00:00','1997-03-25 00:00:00','1997-03-03 00:00:00',1,11.5700,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10458,76,7,'1997-02-26 00:00:00','1997-03-26 00:00:00','1997-03-04 00:00:00',3,147.0600,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10459,86,4,'1997-02-27 00:00:00','1997-03-27 00:00:00','1997-02-28 00:00:00',2,25.0900,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10460,24,8,'1997-02-28 00:00:00','1997-03-28 00:00:00','1997-03-03 00:00:00',1,16.2700,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10461,46,1,'1997-02-28 00:00:00','1997-03-28 00:00:00','1997-03-05 00:00:00',3,148.6100,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10462,16,2,'1997-03-03 00:00:00','1997-03-31 00:00:00','1997-03-18 00:00:00',1,6.1700,'Consolidated Holdings','Berkeley Gardens 12 Brewery','London',NULL,'WX1 6LT','UK')
,(10463,76,5,'1997-03-04 00:00:00','1997-04-01 00:00:00','1997-03-06 00:00:00',3,14.7800,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10464,28,4,'1997-03-04 00:00:00','1997-04-01 00:00:00','1997-03-14 00:00:00',2,89.0000,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal')
,(10465,83,1,'1997-03-05 00:00:00','1997-04-02 00:00:00','1997-03-14 00:00:00',3,145.0400,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10466,15,4,'1997-03-06 00:00:00','1997-04-03 00:00:00','1997-03-13 00:00:00',1,11.9300,'Comrcio Mineiro','Av. dos Lusadas, 23','Sao Paulo','SP','05432-043','Brazil')
,(10467,49,8,'1997-03-06 00:00:00','1997-04-03 00:00:00','1997-03-11 00:00:00',2,4.9300,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10468,39,3,'1997-03-07 00:00:00','1997-04-04 00:00:00','1997-03-12 00:00:00',3,44.1200,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10469,91,1,'1997-03-10 00:00:00','1997-04-07 00:00:00','1997-03-14 00:00:00',1,60.1800,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10470,9,4,'1997-03-11 00:00:00','1997-04-08 00:00:00','1997-03-14 00:00:00',2,64.5600,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10471,11,2,'1997-03-11 00:00:00','1997-04-08 00:00:00','1997-03-18 00:00:00',3,45.5900,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(10472,72,8,'1997-03-12 00:00:00','1997-04-09 00:00:00','1997-03-19 00:00:00',1,4.2000,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK')
,(10473,38,1,'1997-03-13 00:00:00','1997-03-27 00:00:00','1997-03-21 00:00:00',3,16.3700,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10474,58,5,'1997-03-13 00:00:00','1997-04-10 00:00:00','1997-03-21 00:00:00',2,83.4900,'Pericles Comidas clsicas','Calle Dr. Jorge Cash 321','Mxico D.F.',NULL,'5033','Mexico')
,(10475,76,9,'1997-03-14 00:00:00','1997-04-11 00:00:00','1997-04-04 00:00:00',1,68.5200,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10476,35,8,'1997-03-17 00:00:00','1997-04-14 00:00:00','1997-03-24 00:00:00',3,4.4100,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10477,60,5,'1997-03-17 00:00:00','1997-04-14 00:00:00','1997-03-25 00:00:00',2,13.0200,'Princesa Isabel Vinhos','Estrada da sade n. 58','Lisboa',NULL,'1756','Portugal')
,(10478,86,2,'1997-03-18 00:00:00','1997-04-01 00:00:00','1997-03-26 00:00:00',3,4.8100,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10479,65,3,'1997-03-19 00:00:00','1997-04-16 00:00:00','1997-03-21 00:00:00',3,708.9500,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10480,23,6,'1997-03-20 00:00:00','1997-04-17 00:00:00','1997-03-24 00:00:00',2,1.3500,'Folies gourmandes','184, chausse de Tournai','Lille',NULL,'59000','France')
,(10481,67,8,'1997-03-20 00:00:00','1997-04-17 00:00:00','1997-03-25 00:00:00',2,64.3300,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10482,43,1,'1997-03-21 00:00:00','1997-04-18 00:00:00','1997-04-10 00:00:00',3,7.4800,'Lazy K Kountry Store','12 Orchestra Terrace','Walla Walla','WA','99362','USA')
,(10483,91,7,'1997-03-24 00:00:00','1997-04-21 00:00:00','1997-04-25 00:00:00',2,15.2800,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10484,11,3,'1997-03-24 00:00:00','1997-04-21 00:00:00','1997-04-01 00:00:00',3,6.8800,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(10485,47,4,'1997-03-25 00:00:00','1997-04-08 00:00:00','1997-03-31 00:00:00',2,64.4500,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10486,35,1,'1997-03-26 00:00:00','1997-04-23 00:00:00','1997-04-02 00:00:00',2,30.5300,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10487,62,2,'1997-03-26 00:00:00','1997-04-23 00:00:00','1997-03-28 00:00:00',2,71.0700,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10488,25,8,'1997-03-27 00:00:00','1997-04-24 00:00:00','1997-04-02 00:00:00',2,4.9300,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10489,59,6,'1997-03-28 00:00:00','1997-04-25 00:00:00','1997-04-09 00:00:00',2,5.2900,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(10490,35,7,'1997-03-31 00:00:00','1997-04-28 00:00:00','1997-04-03 00:00:00',2,210.1900,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10491,28,8,'1997-03-31 00:00:00','1997-04-28 00:00:00','1997-04-08 00:00:00',3,16.9600,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal')
,(10492,10,3,'1997-04-01 00:00:00','1997-04-29 00:00:00','1997-04-11 00:00:00',1,62.8900,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10493,41,4,'1997-04-02 00:00:00','1997-04-30 00:00:00','1997-04-10 00:00:00',3,10.6400,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10494,15,4,'1997-04-02 00:00:00','1997-04-30 00:00:00','1997-04-09 00:00:00',2,65.9900,'Comrcio Mineiro','Av. dos Lusadas, 23','Sao Paulo','SP','05432-043','Brazil')
,(10495,42,3,'1997-04-03 00:00:00','1997-05-01 00:00:00','1997-04-11 00:00:00',3,4.6500,'Laughing Bacchus Wine Cellars','2319 Elm St.','Vancouver','BC','V3F 2K1','Canada')
,(10496,81,7,'1997-04-04 00:00:00','1997-05-02 00:00:00','1997-04-07 00:00:00',2,46.7700,'Tradiao Hipermercados','Av. Ins de Castro, 414','Sao Paulo','SP','05634-030','Brazil')
,(10497,44,7,'1997-04-04 00:00:00','1997-05-02 00:00:00','1997-04-07 00:00:00',1,36.2100,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10498,35,8,'1997-04-07 00:00:00','1997-05-05 00:00:00','1997-04-11 00:00:00',2,29.7500,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10499,46,4,'1997-04-08 00:00:00','1997-05-06 00:00:00','1997-04-16 00:00:00',2,102.0200,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10500,41,6,'1997-04-09 00:00:00','1997-05-07 00:00:00','1997-04-17 00:00:00',1,42.6800,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10501,6,9,'1997-04-09 00:00:00','1997-05-07 00:00:00','1997-04-16 00:00:00',3,8.8500,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany')
,(10502,58,2,'1997-04-10 00:00:00','1997-05-08 00:00:00','1997-04-29 00:00:00',1,69.3200,'Pericles Comidas clsicas','Calle Dr. Jorge Cash 321','Mxico D.F.',NULL,'5033','Mexico')
,(10503,37,6,'1997-04-11 00:00:00','1997-05-09 00:00:00','1997-04-16 00:00:00',2,16.7400,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10504,91,4,'1997-04-11 00:00:00','1997-05-09 00:00:00','1997-04-18 00:00:00',3,59.1300,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10505,51,3,'1997-04-14 00:00:00','1997-05-12 00:00:00','1997-04-21 00:00:00',3,7.1300,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10506,39,9,'1997-04-15 00:00:00','1997-05-13 00:00:00','1997-05-02 00:00:00',2,21.1900,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10507,3,7,'1997-04-15 00:00:00','1997-05-13 00:00:00','1997-04-22 00:00:00',1,47.4500,'Antonio Moreno Taquera','Mataderos 2312','Mxico D.F.',NULL,'5023','Mexico')
,(10508,56,1,'1997-04-16 00:00:00','1997-05-14 00:00:00','1997-05-13 00:00:00',2,4.9900,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(10509,6,4,'1997-04-17 00:00:00','1997-05-15 00:00:00','1997-04-29 00:00:00',1,0.1500,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany')
,(10510,71,6,'1997-04-18 00:00:00','1997-05-16 00:00:00','1997-04-28 00:00:00',3,367.6300,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10511,9,4,'1997-04-18 00:00:00','1997-05-16 00:00:00','1997-04-21 00:00:00',3,350.6400,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10512,21,7,'1997-04-21 00:00:00','1997-05-19 00:00:00','1997-04-24 00:00:00',2,3.5300,'Familia Arquibaldo','Rua Ors, 92','Sao Paulo','SP','05442-030','Brazil')
,(10513,88,7,'1997-04-22 00:00:00','1997-06-03 00:00:00','1997-04-28 00:00:00',1,105.6500,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(10514,20,3,'1997-04-22 00:00:00','1997-05-20 00:00:00','1997-05-16 00:00:00',2,789.9500,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10515,63,2,'1997-04-23 00:00:00','1997-05-07 00:00:00','1997-05-23 00:00:00',1,204.4700,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10516,37,2,'1997-04-24 00:00:00','1997-05-22 00:00:00','1997-05-01 00:00:00',3,62.7800,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10517,53,3,'1997-04-24 00:00:00','1997-05-22 00:00:00','1997-04-29 00:00:00',3,32.0700,'North/South','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK')
,(10518,80,4,'1997-04-25 00:00:00','1997-05-09 00:00:00','1997-05-05 00:00:00',2,218.1500,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(10519,14,6,'1997-04-28 00:00:00','1997-05-26 00:00:00','1997-05-01 00:00:00',3,91.7600,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland')
,(10520,70,7,'1997-04-29 00:00:00','1997-05-27 00:00:00','1997-05-01 00:00:00',1,13.3700,'Sant Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway')
,(10521,12,8,'1997-04-29 00:00:00','1997-05-27 00:00:00','1997-05-02 00:00:00',2,17.2200,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina')
,(10522,44,4,'1997-04-30 00:00:00','1997-05-28 00:00:00','1997-05-06 00:00:00',1,45.3300,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10523,72,7,'1997-05-01 00:00:00','1997-05-29 00:00:00','1997-05-30 00:00:00',2,77.6300,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK')
,(10524,5,1,'1997-05-01 00:00:00','1997-05-29 00:00:00','1997-05-07 00:00:00',2,244.7900,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10525,9,1,'1997-05-02 00:00:00','1997-05-30 00:00:00','1997-05-23 00:00:00',2,11.0600,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10526,89,4,'1997-05-05 00:00:00','1997-06-02 00:00:00','1997-05-15 00:00:00',2,58.5900,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10527,63,7,'1997-05-05 00:00:00','1997-06-02 00:00:00','1997-05-07 00:00:00',1,41.9000,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10528,32,6,'1997-05-06 00:00:00','1997-05-20 00:00:00','1997-05-09 00:00:00',2,3.3500,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(10529,50,5,'1997-05-07 00:00:00','1997-06-04 00:00:00','1997-05-09 00:00:00',2,66.6900,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium')
,(10530,59,3,'1997-05-08 00:00:00','1997-06-05 00:00:00','1997-05-12 00:00:00',2,339.2200,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(10531,54,7,'1997-05-08 00:00:00','1997-06-05 00:00:00','1997-05-19 00:00:00',1,8.1200,'Ocano Atlntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina')
,(10532,19,7,'1997-05-09 00:00:00','1997-06-06 00:00:00','1997-05-12 00:00:00',3,74.4600,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK')
,(10533,24,8,'1997-05-12 00:00:00','1997-06-09 00:00:00','1997-05-22 00:00:00',1,188.0400,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10534,44,8,'1997-05-12 00:00:00','1997-06-09 00:00:00','1997-05-14 00:00:00',2,27.9400,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10535,3,4,'1997-05-13 00:00:00','1997-06-10 00:00:00','1997-05-21 00:00:00',1,15.6400,'Antonio Moreno Taquera','Mataderos 2312','Mxico D.F.',NULL,'5023','Mexico')
,(10536,44,3,'1997-05-14 00:00:00','1997-06-11 00:00:00','1997-06-06 00:00:00',2,58.8800,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10537,68,1,'1997-05-14 00:00:00','1997-05-28 00:00:00','1997-05-19 00:00:00',1,78.8500,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(10538,11,9,'1997-05-15 00:00:00','1997-06-12 00:00:00','1997-05-16 00:00:00',3,4.8700,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(10539,11,6,'1997-05-16 00:00:00','1997-06-13 00:00:00','1997-05-23 00:00:00',3,12.3600,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(10540,63,3,'1997-05-19 00:00:00','1997-06-16 00:00:00','1997-06-13 00:00:00',3,1007.6400,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10541,34,2,'1997-05-19 00:00:00','1997-06-16 00:00:00','1997-05-29 00:00:00',1,68.6500,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10542,39,1,'1997-05-20 00:00:00','1997-06-17 00:00:00','1997-05-26 00:00:00',3,10.9500,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10543,46,8,'1997-05-21 00:00:00','1997-06-18 00:00:00','1997-05-23 00:00:00',2,48.1700,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10544,48,4,'1997-05-21 00:00:00','1997-06-18 00:00:00','1997-05-30 00:00:00',1,24.9100,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA')
,(10545,43,8,'1997-05-22 00:00:00','1997-06-19 00:00:00','1997-06-26 00:00:00',2,11.9200,'Lazy K Kountry Store','12 Orchestra Terrace','Walla Walla','WA','99362','USA')
,(10546,86,1,'1997-05-23 00:00:00','1997-06-20 00:00:00','1997-05-27 00:00:00',3,194.7200,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10547,72,3,'1997-05-23 00:00:00','1997-06-20 00:00:00','1997-06-02 00:00:00',2,178.4300,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK')
,(10548,79,3,'1997-05-26 00:00:00','1997-06-23 00:00:00','1997-06-02 00:00:00',2,1.4300,'Toms Spezialitten','Luisenstr. 48','Mnster',NULL,'44087','Germany')
,(10549,63,5,'1997-05-27 00:00:00','1997-06-10 00:00:00','1997-05-30 00:00:00',1,171.2400,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10550,30,7,'1997-05-28 00:00:00','1997-06-25 00:00:00','1997-06-06 00:00:00',3,4.3200,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(10551,28,4,'1997-05-28 00:00:00','1997-07-09 00:00:00','1997-06-06 00:00:00',3,72.9500,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal')
,(10552,35,2,'1997-05-29 00:00:00','1997-06-26 00:00:00','1997-06-05 00:00:00',1,83.2200,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10553,89,2,'1997-05-30 00:00:00','1997-06-27 00:00:00','1997-06-03 00:00:00',2,149.4900,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10554,56,4,'1997-05-30 00:00:00','1997-06-27 00:00:00','1997-06-05 00:00:00',3,120.9700,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(10555,71,6,'1997-06-02 00:00:00','1997-06-30 00:00:00','1997-06-04 00:00:00',3,252.4900,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10556,73,2,'1997-06-03 00:00:00','1997-07-15 00:00:00','1997-06-13 00:00:00',1,9.8000,'Simons bistro','Vinbltet 34','Kobenhavn',NULL,'1734','Denmark')
,(10557,44,9,'1997-06-03 00:00:00','1997-06-17 00:00:00','1997-06-06 00:00:00',2,96.7200,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10558,4,1,'1997-06-04 00:00:00','1997-07-02 00:00:00','1997-06-10 00:00:00',2,72.9700,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10559,7,6,'1997-06-05 00:00:00','1997-07-03 00:00:00','1997-06-13 00:00:00',1,8.0500,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10560,25,8,'1997-06-06 00:00:00','1997-07-04 00:00:00','1997-06-09 00:00:00',1,36.6500,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10561,24,2,'1997-06-06 00:00:00','1997-07-04 00:00:00','1997-06-09 00:00:00',2,242.2100,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10562,66,1,'1997-06-09 00:00:00','1997-07-07 00:00:00','1997-06-12 00:00:00',1,22.9500,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10563,67,2,'1997-06-10 00:00:00','1997-07-22 00:00:00','1997-06-24 00:00:00',2,60.4300,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10564,65,4,'1997-06-10 00:00:00','1997-07-08 00:00:00','1997-06-16 00:00:00',3,13.7500,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10565,51,8,'1997-06-11 00:00:00','1997-07-09 00:00:00','1997-06-18 00:00:00',2,7.1500,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10566,7,9,'1997-06-12 00:00:00','1997-07-10 00:00:00','1997-06-18 00:00:00',1,88.4000,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10567,37,1,'1997-06-12 00:00:00','1997-07-10 00:00:00','1997-06-17 00:00:00',1,33.9700,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10568,29,3,'1997-06-13 00:00:00','1997-07-11 00:00:00','1997-07-09 00:00:00',3,6.5400,'Galera del gastronmo','Rambla de Catalua, 23','Barcelona',NULL,'8022','Spain')
,(10569,65,5,'1997-06-16 00:00:00','1997-07-14 00:00:00','1997-07-11 00:00:00',1,58.9800,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10570,51,3,'1997-06-17 00:00:00','1997-07-15 00:00:00','1997-06-19 00:00:00',3,188.9900,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10571,20,8,'1997-06-17 00:00:00','1997-07-29 00:00:00','1997-07-04 00:00:00',3,26.0600,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10572,5,3,'1997-06-18 00:00:00','1997-07-16 00:00:00','1997-06-25 00:00:00',2,116.4300,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10573,3,7,'1997-06-19 00:00:00','1997-07-17 00:00:00','1997-06-20 00:00:00',3,84.8400,'Antonio Moreno Taquera','Mataderos 2312','Mxico D.F.',NULL,'5023','Mexico')
,(10574,82,4,'1997-06-19 00:00:00','1997-07-17 00:00:00','1997-06-30 00:00:00',2,37.6000,'Trail-s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA')
,(10575,52,5,'1997-06-20 00:00:00','1997-07-04 00:00:00','1997-06-30 00:00:00',1,127.3400,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'4179','Germany')
,(10576,80,3,'1997-06-23 00:00:00','1997-07-07 00:00:00','1997-06-30 00:00:00',3,18.5600,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(10577,82,9,'1997-06-23 00:00:00','1997-08-04 00:00:00','1997-06-30 00:00:00',2,25.4100,'Trail-s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA')
,(10578,11,4,'1997-06-24 00:00:00','1997-07-22 00:00:00','1997-07-25 00:00:00',3,29.6000,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(10579,45,1,'1997-06-25 00:00:00','1997-07-23 00:00:00','1997-07-04 00:00:00',2,13.7300,'Let-s Stop N Shop','87 Polk St. Suite 5','San Francisco','CA','94117','USA')
,(10580,56,4,'1997-06-26 00:00:00','1997-07-24 00:00:00','1997-07-01 00:00:00',3,75.8900,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(10581,21,3,'1997-06-26 00:00:00','1997-07-24 00:00:00','1997-07-02 00:00:00',1,3.0100,'Familia Arquibaldo','Rua Ors, 92','Sao Paulo','SP','05442-030','Brazil')
,(10582,6,3,'1997-06-27 00:00:00','1997-07-25 00:00:00','1997-07-14 00:00:00',2,27.7100,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany')
,(10583,89,2,'1997-06-30 00:00:00','1997-07-28 00:00:00','1997-07-04 00:00:00',2,7.2800,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10584,7,4,'1997-06-30 00:00:00','1997-07-28 00:00:00','1997-07-04 00:00:00',1,59.1400,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10585,90,7,'1997-07-01 00:00:00','1997-07-29 00:00:00','1997-07-10 00:00:00',1,13.4100,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil')
,(10586,66,9,'1997-07-02 00:00:00','1997-07-30 00:00:00','1997-07-09 00:00:00',1,0.4800,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10587,61,1,'1997-07-02 00:00:00','1997-07-30 00:00:00','1997-07-09 00:00:00',1,62.5200,'Que Delcia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil')
,(10588,63,2,'1997-07-03 00:00:00','1997-07-31 00:00:00','1997-07-10 00:00:00',3,194.6700,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10589,32,8,'1997-07-04 00:00:00','1997-08-01 00:00:00','1997-07-14 00:00:00',2,4.4200,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(10590,51,4,'1997-07-07 00:00:00','1997-08-04 00:00:00','1997-07-14 00:00:00',3,44.7700,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10591,83,1,'1997-07-07 00:00:00','1997-07-21 00:00:00','1997-07-16 00:00:00',1,55.9200,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10592,44,3,'1997-07-08 00:00:00','1997-08-05 00:00:00','1997-07-16 00:00:00',1,32.1000,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10593,44,7,'1997-07-09 00:00:00','1997-08-06 00:00:00','1997-08-13 00:00:00',2,174.2000,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10594,55,3,'1997-07-09 00:00:00','1997-08-06 00:00:00','1997-07-16 00:00:00',2,5.2400,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(10595,20,2,'1997-07-10 00:00:00','1997-08-07 00:00:00','1997-07-14 00:00:00',1,96.7800,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10596,91,8,'1997-07-11 00:00:00','1997-08-08 00:00:00','1997-08-12 00:00:00',1,16.3400,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10597,59,7,'1997-07-11 00:00:00','1997-08-08 00:00:00','1997-07-18 00:00:00',3,35.1200,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(10598,65,1,'1997-07-14 00:00:00','1997-08-11 00:00:00','1997-07-18 00:00:00',3,44.4200,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10599,11,6,'1997-07-15 00:00:00','1997-08-26 00:00:00','1997-07-21 00:00:00',3,29.9800,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(10600,36,4,'1997-07-16 00:00:00','1997-08-13 00:00:00','1997-07-21 00:00:00',1,45.1300,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA')
,(10601,35,7,'1997-07-16 00:00:00','1997-08-27 00:00:00','1997-07-22 00:00:00',1,58.3000,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10602,83,8,'1997-07-17 00:00:00','1997-08-14 00:00:00','1997-07-22 00:00:00',2,2.9200,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10603,71,8,'1997-07-18 00:00:00','1997-08-15 00:00:00','1997-08-08 00:00:00',2,48.7700,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10604,28,1,'1997-07-18 00:00:00','1997-08-15 00:00:00','1997-07-29 00:00:00',1,7.4600,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal')
,(10605,51,1,'1997-07-21 00:00:00','1997-08-18 00:00:00','1997-07-29 00:00:00',2,379.1300,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10606,81,4,'1997-07-22 00:00:00','1997-08-19 00:00:00','1997-07-31 00:00:00',3,79.4000,'Tradiao Hipermercados','Av. Ins de Castro, 414','Sao Paulo','SP','05634-030','Brazil')
,(10607,71,5,'1997-07-22 00:00:00','1997-08-19 00:00:00','1997-07-25 00:00:00',1,200.2400,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10608,79,4,'1997-07-23 00:00:00','1997-08-20 00:00:00','1997-08-01 00:00:00',2,27.7900,'Toms Spezialitten','Luisenstr. 48','Mnster',NULL,'44087','Germany')
,(10609,18,7,'1997-07-24 00:00:00','1997-08-21 00:00:00','1997-07-30 00:00:00',2,1.8500,'Du monde entier','67, rue des Cinquante Otages','Nantes',NULL,'44000','France')
,(10610,41,8,'1997-07-25 00:00:00','1997-08-22 00:00:00','1997-08-06 00:00:00',1,26.7800,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10611,93,6,'1997-07-25 00:00:00','1997-08-22 00:00:00','1997-08-01 00:00:00',2,80.6500,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland')
,(10612,71,1,'1997-07-28 00:00:00','1997-08-25 00:00:00','1997-08-01 00:00:00',2,544.0800,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10613,35,4,'1997-07-29 00:00:00','1997-08-26 00:00:00','1997-08-01 00:00:00',2,8.1100,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10614,6,8,'1997-07-29 00:00:00','1997-08-26 00:00:00','1997-08-01 00:00:00',3,1.9300,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany')
,(10615,92,2,'1997-07-30 00:00:00','1997-08-27 00:00:00','1997-08-06 00:00:00',3,0.7500,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland')
,(10616,32,1,'1997-07-31 00:00:00','1997-08-28 00:00:00','1997-08-05 00:00:00',2,116.5300,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(10617,32,4,'1997-07-31 00:00:00','1997-08-28 00:00:00','1997-08-04 00:00:00',2,18.5300,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(10618,51,1,'1997-08-01 00:00:00','1997-09-12 00:00:00','1997-08-08 00:00:00',1,154.6800,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10619,51,3,'1997-08-04 00:00:00','1997-09-01 00:00:00','1997-08-07 00:00:00',3,91.0500,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10620,42,2,'1997-08-05 00:00:00','1997-09-02 00:00:00','1997-08-14 00:00:00',3,0.9400,'Laughing Bacchus Wine Cellars','2319 Elm St.','Vancouver','BC','V3F 2K1','Canada')
,(10621,38,4,'1997-08-05 00:00:00','1997-09-02 00:00:00','1997-08-11 00:00:00',2,23.7300,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10622,67,4,'1997-08-06 00:00:00','1997-09-03 00:00:00','1997-08-11 00:00:00',3,50.9700,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10623,25,8,'1997-08-07 00:00:00','1997-09-04 00:00:00','1997-08-12 00:00:00',2,97.1800,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10624,78,4,'1997-08-07 00:00:00','1997-09-04 00:00:00','1997-08-19 00:00:00',2,94.8000,'The Cracker Box','55 Grizzly Peak Rd.','Butte','MT','59801','USA')
,(10625,2,3,'1997-08-08 00:00:00','1997-09-05 00:00:00','1997-08-14 00:00:00',1,43.9000,'Ana Trujillo Emparedados y helados','Avda. de la Constitucin 2222','Mxico D.F.',NULL,'5021','Mexico')
,(10626,5,1,'1997-08-11 00:00:00','1997-09-08 00:00:00','1997-08-20 00:00:00',2,138.6900,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10627,71,8,'1997-08-11 00:00:00','1997-09-22 00:00:00','1997-08-21 00:00:00',3,107.4600,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10628,7,4,'1997-08-12 00:00:00','1997-09-09 00:00:00','1997-08-20 00:00:00',3,30.3600,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10629,30,4,'1997-08-12 00:00:00','1997-09-09 00:00:00','1997-08-20 00:00:00',3,85.4600,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(10630,39,1,'1997-08-13 00:00:00','1997-09-10 00:00:00','1997-08-19 00:00:00',2,32.3500,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10631,41,8,'1997-08-14 00:00:00','1997-09-11 00:00:00','1997-08-15 00:00:00',1,0.8700,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10632,88,8,'1997-08-14 00:00:00','1997-09-11 00:00:00','1997-08-19 00:00:00',1,41.3800,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(10633,20,7,'1997-08-15 00:00:00','1997-09-12 00:00:00','1997-08-18 00:00:00',3,477.9000,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10634,23,4,'1997-08-15 00:00:00','1997-09-12 00:00:00','1997-08-21 00:00:00',3,487.3800,'Folies gourmandes','184, chausse de Tournai','Lille',NULL,'59000','France')
,(10635,49,8,'1997-08-18 00:00:00','1997-09-15 00:00:00','1997-08-21 00:00:00',3,47.4600,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10636,89,4,'1997-08-19 00:00:00','1997-09-16 00:00:00','1997-08-26 00:00:00',1,1.1500,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10637,62,6,'1997-08-19 00:00:00','1997-09-16 00:00:00','1997-08-26 00:00:00',1,201.2900,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10638,47,3,'1997-08-20 00:00:00','1997-09-17 00:00:00','1997-09-01 00:00:00',1,158.4400,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10639,70,7,'1997-08-20 00:00:00','1997-09-17 00:00:00','1997-08-27 00:00:00',3,38.6400,'Sant Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway')
,(10640,88,4,'1997-08-21 00:00:00','1997-09-18 00:00:00','1997-08-28 00:00:00',1,23.5500,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(10641,35,4,'1997-08-22 00:00:00','1997-09-19 00:00:00','1997-08-26 00:00:00',2,179.6100,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10642,73,7,'1997-08-22 00:00:00','1997-09-19 00:00:00','1997-09-05 00:00:00',3,41.8900,'Simons bistro','Vinbltet 34','Kobenhavn',NULL,'1734','Denmark')
,(10643,1,6,'1997-08-25 00:00:00','1997-09-22 00:00:00','1997-09-02 00:00:00',1,29.4600,'Alfreds Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany')
,(10644,90,3,'1997-08-25 00:00:00','1997-09-22 00:00:00','1997-09-01 00:00:00',2,0.1400,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil')
,(10645,34,4,'1997-08-26 00:00:00','1997-09-23 00:00:00','1997-09-02 00:00:00',1,12.4100,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10646,37,9,'1997-08-27 00:00:00','1997-10-08 00:00:00','1997-09-03 00:00:00',3,142.3300,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10647,61,4,'1997-08-27 00:00:00','1997-09-10 00:00:00','1997-09-03 00:00:00',2,45.5400,'Que Delcia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil')
,(10648,67,5,'1997-08-28 00:00:00','1997-10-09 00:00:00','1997-09-09 00:00:00',2,14.2500,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10649,50,5,'1997-08-28 00:00:00','1997-09-25 00:00:00','1997-08-29 00:00:00',3,6.2000,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium')
,(10650,21,5,'1997-08-29 00:00:00','1997-09-26 00:00:00','1997-09-03 00:00:00',3,176.8100,'Familia Arquibaldo','Rua Ors, 92','Sao Paulo','SP','05442-030','Brazil')
,(10651,88,8,'1997-09-01 00:00:00','1997-09-29 00:00:00','1997-09-11 00:00:00',2,20.6000,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(10652,31,4,'1997-09-01 00:00:00','1997-09-29 00:00:00','1997-09-08 00:00:00',2,7.1400,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil')
,(10653,25,1,'1997-09-02 00:00:00','1997-09-30 00:00:00','1997-09-19 00:00:00',1,93.2500,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10654,5,5,'1997-09-02 00:00:00','1997-09-30 00:00:00','1997-09-11 00:00:00',1,55.2600,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10655,66,1,'1997-09-03 00:00:00','1997-10-01 00:00:00','1997-09-11 00:00:00',2,4.4100,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10656,32,6,'1997-09-04 00:00:00','1997-10-02 00:00:00','1997-09-10 00:00:00',1,57.1500,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(10657,71,2,'1997-09-04 00:00:00','1997-10-02 00:00:00','1997-09-15 00:00:00',2,352.6900,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10658,63,4,'1997-09-05 00:00:00','1997-10-03 00:00:00','1997-09-08 00:00:00',1,364.1500,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10659,62,7,'1997-09-05 00:00:00','1997-10-03 00:00:00','1997-09-10 00:00:00',2,105.8100,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10660,36,8,'1997-09-08 00:00:00','1997-10-06 00:00:00','1997-10-15 00:00:00',1,111.2900,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA')
,(10661,37,7,'1997-09-09 00:00:00','1997-10-07 00:00:00','1997-09-15 00:00:00',3,17.5500,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10662,48,3,'1997-09-09 00:00:00','1997-10-07 00:00:00','1997-09-18 00:00:00',2,1.2800,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA')
,(10663,9,2,'1997-09-10 00:00:00','1997-09-24 00:00:00','1997-10-03 00:00:00',2,113.1500,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10664,28,1,'1997-09-10 00:00:00','1997-10-08 00:00:00','1997-09-19 00:00:00',3,1.2700,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal')
,(10665,48,1,'1997-09-11 00:00:00','1997-10-09 00:00:00','1997-09-17 00:00:00',2,26.3100,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA')
,(10666,68,7,'1997-09-12 00:00:00','1997-10-10 00:00:00','1997-09-22 00:00:00',2,232.4200,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(10667,20,7,'1997-09-12 00:00:00','1997-10-10 00:00:00','1997-09-19 00:00:00',1,78.0900,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10668,88,1,'1997-09-15 00:00:00','1997-10-13 00:00:00','1997-09-23 00:00:00',2,47.2200,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(10669,73,2,'1997-09-15 00:00:00','1997-10-13 00:00:00','1997-09-22 00:00:00',1,24.3900,'Simons bistro','Vinbltet 34','Kobenhavn',NULL,'1734','Denmark')
,(10670,25,4,'1997-09-16 00:00:00','1997-10-14 00:00:00','1997-09-18 00:00:00',1,203.4800,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10671,26,1,'1997-09-17 00:00:00','1997-10-15 00:00:00','1997-09-24 00:00:00',1,30.3400,'France restauration','54, rue Royale','Nantes',NULL,'44000','France')
,(10672,5,9,'1997-09-17 00:00:00','1997-10-01 00:00:00','1997-09-26 00:00:00',2,95.7500,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10673,92,2,'1997-09-18 00:00:00','1997-10-16 00:00:00','1997-09-19 00:00:00',1,22.7600,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland')
,(10674,38,4,'1997-09-18 00:00:00','1997-10-16 00:00:00','1997-09-30 00:00:00',2,0.9000,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10675,25,5,'1997-09-19 00:00:00','1997-10-17 00:00:00','1997-09-23 00:00:00',2,31.8500,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10676,80,2,'1997-09-22 00:00:00','1997-10-20 00:00:00','1997-09-29 00:00:00',2,2.0100,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(10677,3,1,'1997-09-22 00:00:00','1997-10-20 00:00:00','1997-09-26 00:00:00',3,4.0300,'Antonio Moreno Taquera','Mataderos 2312','Mxico D.F.',NULL,'5023','Mexico')
,(10678,71,7,'1997-09-23 00:00:00','1997-10-21 00:00:00','1997-10-16 00:00:00',3,388.9800,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10679,7,8,'1997-09-23 00:00:00','1997-10-21 00:00:00','1997-09-30 00:00:00',3,27.9400,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10680,55,1,'1997-09-24 00:00:00','1997-10-22 00:00:00','1997-09-26 00:00:00',1,26.6100,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(10681,32,3,'1997-09-25 00:00:00','1997-10-23 00:00:00','1997-09-30 00:00:00',3,76.1300,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(10682,3,3,'1997-09-25 00:00:00','1997-10-23 00:00:00','1997-10-01 00:00:00',2,36.1300,'Antonio Moreno Taquera','Mataderos 2312','Mxico D.F.',NULL,'5023','Mexico')
,(10683,18,2,'1997-09-26 00:00:00','1997-10-24 00:00:00','1997-10-01 00:00:00',1,4.4000,'Du monde entier','67, rue des Cinquante Otages','Nantes',NULL,'44000','France')
,(10684,56,3,'1997-09-26 00:00:00','1997-10-24 00:00:00','1997-09-30 00:00:00',1,145.6300,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(10685,31,4,'1997-09-29 00:00:00','1997-10-13 00:00:00','1997-10-03 00:00:00',2,33.7500,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil')
,(10686,59,2,'1997-09-30 00:00:00','1997-10-28 00:00:00','1997-10-08 00:00:00',1,96.5000,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(10687,37,9,'1997-09-30 00:00:00','1997-10-28 00:00:00','1997-10-30 00:00:00',2,296.4300,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10688,83,4,'1997-10-01 00:00:00','1997-10-15 00:00:00','1997-10-07 00:00:00',2,299.0900,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10689,5,1,'1997-10-01 00:00:00','1997-10-29 00:00:00','1997-10-07 00:00:00',2,13.4200,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10690,34,1,'1997-10-02 00:00:00','1997-10-30 00:00:00','1997-10-03 00:00:00',1,15.8000,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10691,63,2,'1997-10-03 00:00:00','1997-11-14 00:00:00','1997-10-22 00:00:00',2,810.0500,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10692,1,4,'1997-10-03 00:00:00','1997-10-31 00:00:00','1997-10-13 00:00:00',2,61.0200,'Alfred-s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany')
,(10693,91,3,'1997-10-06 00:00:00','1997-10-20 00:00:00','1997-10-10 00:00:00',3,139.3400,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10694,63,8,'1997-10-06 00:00:00','1997-11-03 00:00:00','1997-10-09 00:00:00',3,398.3600,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10695,92,7,'1997-10-07 00:00:00','1997-11-18 00:00:00','1997-10-14 00:00:00',1,16.7200,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland')
,(10696,91,8,'1997-10-08 00:00:00','1997-11-19 00:00:00','1997-10-14 00:00:00',3,102.5500,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10697,47,3,'1997-10-08 00:00:00','1997-11-05 00:00:00','1997-10-14 00:00:00',1,45.5200,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10698,20,4,'1997-10-09 00:00:00','1997-11-06 00:00:00','1997-10-17 00:00:00',1,272.4700,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10699,52,3,'1997-10-09 00:00:00','1997-11-06 00:00:00','1997-10-13 00:00:00',3,0.5800,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'4179','Germany')
,(10700,71,3,'1997-10-10 00:00:00','1997-11-07 00:00:00','1997-10-16 00:00:00',1,65.1000,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10701,37,6,'1997-10-13 00:00:00','1997-10-27 00:00:00','1997-10-15 00:00:00',3,220.3100,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10702,1,4,'1997-10-13 00:00:00','1997-11-24 00:00:00','1997-10-21 00:00:00',1,23.9400,'Alfred-s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany')
,(10703,24,6,'1997-10-14 00:00:00','1997-11-11 00:00:00','1997-10-20 00:00:00',2,152.3000,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10704,62,6,'1997-10-14 00:00:00','1997-11-11 00:00:00','1997-11-07 00:00:00',1,4.7800,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10705,35,9,'1997-10-15 00:00:00','1997-11-12 00:00:00','1997-11-18 00:00:00',2,3.5200,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10706,55,8,'1997-10-16 00:00:00','1997-11-13 00:00:00','1997-10-21 00:00:00',3,135.6300,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(10707,4,4,'1997-10-16 00:00:00','1997-10-30 00:00:00','1997-10-23 00:00:00',3,21.7400,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10708,77,6,'1997-10-17 00:00:00','1997-11-28 00:00:00','1997-11-05 00:00:00',2,2.9600,'The Big Cheese','89 Jefferson Way Suite 2','Portland','OR','97201','USA')
,(10709,31,1,'1997-10-17 00:00:00','1997-11-14 00:00:00','1997-11-20 00:00:00',3,210.8000,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil')
,(10710,27,1,'1997-10-20 00:00:00','1997-11-17 00:00:00','1997-10-23 00:00:00',1,4.9800,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy')
,(10711,71,5,'1997-10-21 00:00:00','1997-12-02 00:00:00','1997-10-29 00:00:00',2,52.4100,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10712,37,3,'1997-10-21 00:00:00','1997-11-18 00:00:00','1997-10-31 00:00:00',1,89.9300,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10713,71,1,'1997-10-22 00:00:00','1997-11-19 00:00:00','1997-10-24 00:00:00',1,167.0500,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10714,71,5,'1997-10-22 00:00:00','1997-11-19 00:00:00','1997-10-27 00:00:00',3,24.4900,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10715,9,3,'1997-10-23 00:00:00','1997-11-06 00:00:00','1997-10-29 00:00:00',1,63.2000,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10716,64,4,'1997-10-24 00:00:00','1997-11-21 00:00:00','1997-10-27 00:00:00',2,22.5700,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina')
,(10717,25,1,'1997-10-24 00:00:00','1997-11-21 00:00:00','1997-10-29 00:00:00',2,59.2500,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10718,39,1,'1997-10-27 00:00:00','1997-11-24 00:00:00','1997-10-29 00:00:00',3,170.8800,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10719,45,8,'1997-10-27 00:00:00','1997-11-24 00:00:00','1997-11-05 00:00:00',2,51.4400,'Let-s Stop N Shop','87 Polk St. Suite 5','San Francisco','CA','94117','USA')
,(10720,61,8,'1997-10-28 00:00:00','1997-11-11 00:00:00','1997-11-05 00:00:00',2,9.5300,'Que Delcia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil')
,(10721,63,5,'1997-10-29 00:00:00','1997-11-26 00:00:00','1997-10-31 00:00:00',3,48.9200,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10722,71,8,'1997-10-29 00:00:00','1997-12-10 00:00:00','1997-11-04 00:00:00',1,74.5800,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10723,91,3,'1997-10-30 00:00:00','1997-11-27 00:00:00','1997-11-25 00:00:00',1,21.7200,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10724,51,8,'1997-10-30 00:00:00','1997-12-11 00:00:00','1997-11-05 00:00:00',2,57.7500,'Mre Paillarde','43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada')
,(10725,21,4,'1997-10-31 00:00:00','1997-11-28 00:00:00','1997-11-05 00:00:00',3,10.8300,'Familia Arquibaldo','Rua Ors, 92','Sao Paulo','SP','05442-030','Brazil')
,(10726,19,4,'1997-11-03 00:00:00','1997-11-17 00:00:00','1997-12-05 00:00:00',1,16.5600,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK')
,(10727,66,2,'1997-11-03 00:00:00','1997-12-01 00:00:00','1997-12-05 00:00:00',1,89.9000,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10728,62,4,'1997-11-04 00:00:00','1997-12-02 00:00:00','1997-11-11 00:00:00',2,58.3300,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10729,47,8,'1997-11-04 00:00:00','1997-12-16 00:00:00','1997-11-14 00:00:00',3,141.0600,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10730,9,5,'1997-11-05 00:00:00','1997-12-03 00:00:00','1997-11-14 00:00:00',1,20.1200,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10731,14,7,'1997-11-06 00:00:00','1997-12-04 00:00:00','1997-11-14 00:00:00',1,96.6500,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland')
,(10732,9,3,'1997-11-06 00:00:00','1997-12-04 00:00:00','1997-11-07 00:00:00',1,16.9700,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10733,5,1,'1997-11-07 00:00:00','1997-12-05 00:00:00','1997-11-10 00:00:00',3,110.1100,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10734,31,2,'1997-11-07 00:00:00','1997-12-05 00:00:00','1997-11-12 00:00:00',3,1.6300,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil')
,(10735,45,6,'1997-11-10 00:00:00','1997-12-08 00:00:00','1997-11-21 00:00:00',2,45.9700,'Let-s Stop N Shop','87 Polk St. Suite 5','San Francisco','CA','94117','USA')
,(10736,37,9,'1997-11-11 00:00:00','1997-12-09 00:00:00','1997-11-21 00:00:00',2,44.1000,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10737,87,2,'1997-11-11 00:00:00','1997-12-09 00:00:00','1997-11-18 00:00:00',2,7.7900,'Vins et alcools Chevalier','59 rue de l-Abbaye','Reims',NULL,'51100','France')
,(10738,74,2,'1997-11-12 00:00:00','1997-12-10 00:00:00','1997-11-18 00:00:00',1,2.9100,'Spcialits du monde','25, rue Lauriston','Paris',NULL,'75016','France')
,(10739,87,3,'1997-11-12 00:00:00','1997-12-10 00:00:00','1997-11-17 00:00:00',3,11.0800,'Vins et alcools Chevalier','59 rue de l-Abbaye','Reims',NULL,'51100','France')
,(10740,91,4,'1997-11-13 00:00:00','1997-12-11 00:00:00','1997-11-25 00:00:00',2,81.8800,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10741,4,4,'1997-11-14 00:00:00','1997-11-28 00:00:00','1997-11-18 00:00:00',3,10.9600,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10742,10,3,'1997-11-14 00:00:00','1997-12-12 00:00:00','1997-11-18 00:00:00',3,243.7300,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10743,4,1,'1997-11-17 00:00:00','1997-12-15 00:00:00','1997-11-21 00:00:00',2,23.7200,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10744,83,6,'1997-11-17 00:00:00','1997-12-15 00:00:00','1997-11-24 00:00:00',1,69.1900,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10745,63,9,'1997-11-18 00:00:00','1997-12-16 00:00:00','1997-11-27 00:00:00',1,3.5200,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10746,14,1,'1997-11-19 00:00:00','1997-12-17 00:00:00','1997-11-21 00:00:00',3,31.4300,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland')
,(10747,59,6,'1997-11-19 00:00:00','1997-12-17 00:00:00','1997-11-26 00:00:00',1,117.3300,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(10748,71,3,'1997-11-20 00:00:00','1997-12-18 00:00:00','1997-11-28 00:00:00',1,232.5500,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10749,38,4,'1997-11-20 00:00:00','1997-12-18 00:00:00','1997-12-19 00:00:00',2,61.5300,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10750,89,9,'1997-11-21 00:00:00','1997-12-19 00:00:00','1997-11-24 00:00:00',1,79.3000,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10751,68,3,'1997-11-24 00:00:00','1997-12-22 00:00:00','1997-12-03 00:00:00',3,130.7900,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(10752,53,2,'1997-11-24 00:00:00','1997-12-22 00:00:00','1997-11-28 00:00:00',3,1.3900,'North/South','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK')
,(10753,27,3,'1997-11-25 00:00:00','1997-12-23 00:00:00','1997-11-27 00:00:00',1,7.7000,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy')
,(10754,49,6,'1997-11-25 00:00:00','1997-12-23 00:00:00','1997-11-27 00:00:00',3,2.3800,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10755,9,4,'1997-11-26 00:00:00','1997-12-24 00:00:00','1997-11-28 00:00:00',2,16.7100,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10756,75,8,'1997-11-27 00:00:00','1997-12-25 00:00:00','1997-12-02 00:00:00',2,73.2100,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA')
,(10757,71,6,'1997-11-27 00:00:00','1997-12-25 00:00:00','1997-12-15 00:00:00',1,8.1900,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10758,68,3,'1997-11-28 00:00:00','1997-12-26 00:00:00','1997-12-04 00:00:00',3,138.1700,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(10759,2,3,'1997-11-28 00:00:00','1997-12-26 00:00:00','1997-12-12 00:00:00',3,11.9900,'Ana Trujillo Emparedados y helados','Avda. de la Constitucin 2222','Mxico D.F.',NULL,'5021','Mexico')
,(10760,50,4,'1997-12-01 00:00:00','1997-12-29 00:00:00','1997-12-10 00:00:00',1,155.6400,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium')
,(10761,65,5,'1997-12-02 00:00:00','1997-12-30 00:00:00','1997-12-08 00:00:00',2,18.6600,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10762,24,3,'1997-12-02 00:00:00','1997-12-30 00:00:00','1997-12-09 00:00:00',1,328.7400,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10763,23,3,'1997-12-03 00:00:00','1997-12-31 00:00:00','1997-12-08 00:00:00',3,37.3500,'Folies gourmandes','184, chausse de Tournai','Lille',NULL,'59000','France')
,(10764,20,6,'1997-12-03 00:00:00','1997-12-31 00:00:00','1997-12-08 00:00:00',3,145.4500,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10765,63,3,'1997-12-04 00:00:00','1998-01-01 00:00:00','1997-12-09 00:00:00',3,42.7400,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10766,56,4,'1997-12-05 00:00:00','1998-01-02 00:00:00','1997-12-09 00:00:00',1,157.5500,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(10767,76,4,'1997-12-05 00:00:00','1998-01-02 00:00:00','1997-12-15 00:00:00',3,1.5900,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10768,4,3,'1997-12-08 00:00:00','1998-01-05 00:00:00','1997-12-15 00:00:00',2,146.3200,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10769,83,3,'1997-12-08 00:00:00','1998-01-05 00:00:00','1997-12-12 00:00:00',1,65.0600,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10770,34,8,'1997-12-09 00:00:00','1998-01-06 00:00:00','1997-12-17 00:00:00',3,5.3200,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10771,20,9,'1997-12-10 00:00:00','1998-01-07 00:00:00','1998-01-02 00:00:00',2,11.1900,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10772,44,3,'1997-12-10 00:00:00','1998-01-07 00:00:00','1997-12-19 00:00:00',2,91.2800,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10773,20,1,'1997-12-11 00:00:00','1998-01-08 00:00:00','1997-12-16 00:00:00',3,96.4300,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10774,24,4,'1997-12-11 00:00:00','1997-12-25 00:00:00','1997-12-12 00:00:00',1,48.2000,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10775,78,7,'1997-12-12 00:00:00','1998-01-09 00:00:00','1997-12-26 00:00:00',1,20.2500,'The Cracker Box','55 Grizzly Peak Rd.','Butte','MT','59801','USA')
,(10776,20,1,'1997-12-15 00:00:00','1998-01-12 00:00:00','1997-12-18 00:00:00',3,351.5300,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10777,31,7,'1997-12-15 00:00:00','1997-12-29 00:00:00','1998-01-21 00:00:00',2,3.0100,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil')
,(10778,5,3,'1997-12-16 00:00:00','1998-01-13 00:00:00','1997-12-24 00:00:00',1,6.7900,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10779,52,3,'1997-12-16 00:00:00','1998-01-13 00:00:00','1998-01-14 00:00:00',2,58.1300,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'4179','Germany')
,(10780,46,2,'1997-12-16 00:00:00','1997-12-30 00:00:00','1997-12-25 00:00:00',1,42.1300,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10781,89,2,'1997-12-17 00:00:00','1998-01-14 00:00:00','1997-12-19 00:00:00',3,73.1600,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(10782,12,9,'1997-12-17 00:00:00','1998-01-14 00:00:00','1997-12-22 00:00:00',3,1.1000,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina')
,(10783,34,4,'1997-12-18 00:00:00','1998-01-15 00:00:00','1997-12-19 00:00:00',2,124.9800,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10784,49,4,'1997-12-18 00:00:00','1998-01-15 00:00:00','1997-12-22 00:00:00',3,70.0900,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10785,33,1,'1997-12-18 00:00:00','1998-01-15 00:00:00','1997-12-24 00:00:00',3,1.5100,'GROSELLA-Restaurante','5 Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela')
,(10786,62,8,'1997-12-19 00:00:00','1998-01-16 00:00:00','1997-12-23 00:00:00',1,110.8700,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10787,41,2,'1997-12-19 00:00:00','1998-01-02 00:00:00','1997-12-26 00:00:00',1,249.9300,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10788,63,1,'1997-12-22 00:00:00','1998-01-19 00:00:00','1998-01-19 00:00:00',2,42.7000,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10789,23,1,'1997-12-22 00:00:00','1998-01-19 00:00:00','1997-12-31 00:00:00',2,100.6000,'Folies gourmandes','184, chausse de Tournai','Lille',NULL,'59000','France')
,(10790,31,6,'1997-12-22 00:00:00','1998-01-19 00:00:00','1997-12-26 00:00:00',1,28.2300,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil')
,(10791,25,6,'1997-12-23 00:00:00','1998-01-20 00:00:00','1998-01-01 00:00:00',2,16.8500,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10792,93,1,'1997-12-23 00:00:00','1998-01-20 00:00:00','1997-12-31 00:00:00',3,23.7900,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland')
,(10793,4,3,'1997-12-24 00:00:00','1998-01-21 00:00:00','1998-01-08 00:00:00',3,4.5200,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10794,61,6,'1997-12-24 00:00:00','1998-01-21 00:00:00','1998-01-02 00:00:00',1,21.4900,'Que Delcia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil')
,(10795,20,8,'1997-12-24 00:00:00','1998-01-21 00:00:00','1998-01-20 00:00:00',2,126.6600,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10796,35,3,'1997-12-25 00:00:00','1998-01-22 00:00:00','1998-01-14 00:00:00',1,26.5200,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10797,17,7,'1997-12-25 00:00:00','1998-01-22 00:00:00','1998-01-05 00:00:00',2,33.3500,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany')
,(10798,38,2,'1997-12-26 00:00:00','1998-01-23 00:00:00','1998-01-05 00:00:00',1,2.3300,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10799,39,9,'1997-12-26 00:00:00','1998-02-06 00:00:00','1998-01-05 00:00:00',3,30.7600,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10800,72,1,'1997-12-26 00:00:00','1998-01-23 00:00:00','1998-01-05 00:00:00',3,137.4400,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK')
,(10801,8,4,'1997-12-29 00:00:00','1998-01-26 00:00:00','1997-12-31 00:00:00',2,97.0900,'Blido Comidas preparadas','C/ Araquil, 67','Madrid',NULL,'28023','Spain')
,(10802,73,4,'1997-12-29 00:00:00','1998-01-26 00:00:00','1998-01-02 00:00:00',2,257.2600,'Simons bistro','Vinbltet 34','Kobenhavn',NULL,'1734','Denmark')
,(10803,90,4,'1997-12-30 00:00:00','1998-01-27 00:00:00','1998-01-06 00:00:00',1,55.2300,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil')
,(10804,72,6,'1997-12-30 00:00:00','1998-01-27 00:00:00','1998-01-07 00:00:00',2,27.3300,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK')
,(10805,77,2,'1997-12-30 00:00:00','1998-01-27 00:00:00','1998-01-09 00:00:00',3,237.3400,'The Big Cheese','89 Jefferson Way Suite 2','Portland','OR','97201','USA')
,(10806,86,3,'1997-12-31 00:00:00','1998-01-28 00:00:00','1998-01-05 00:00:00',2,22.1100,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10807,27,4,'1997-12-31 00:00:00','1998-01-28 00:00:00','1998-01-30 00:00:00',1,1.3600,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy')
,(10808,55,2,'1998-01-01 00:00:00','1998-01-29 00:00:00','1998-01-09 00:00:00',3,45.5300,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(10809,90,7,'1998-01-01 00:00:00','1998-01-29 00:00:00','1998-01-07 00:00:00',1,4.8700,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil')
,(10810,42,2,'1998-01-01 00:00:00','1998-01-29 00:00:00','1998-01-07 00:00:00',3,4.3300,'Laughing Bacchus Wine Cellars','2319 Elm St.','Vancouver','BC','V3F 2K1','Canada')
,(10811,47,8,'1998-01-02 00:00:00','1998-01-30 00:00:00','1998-01-08 00:00:00',1,31.2200,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10812,66,5,'1998-01-02 00:00:00','1998-01-30 00:00:00','1998-01-12 00:00:00',1,59.7800,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10813,67,1,'1998-01-05 00:00:00','1998-02-02 00:00:00','1998-01-09 00:00:00',1,47.3800,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10814,86,3,'1998-01-05 00:00:00','1998-02-02 00:00:00','1998-01-14 00:00:00',3,130.9400,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10815,71,2,'1998-01-05 00:00:00','1998-02-02 00:00:00','1998-01-14 00:00:00',3,14.6200,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10816,32,4,'1998-01-06 00:00:00','1998-02-03 00:00:00','1998-02-04 00:00:00',2,719.7800,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(10817,39,3,'1998-01-06 00:00:00','1998-01-20 00:00:00','1998-01-13 00:00:00',2,306.0700,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10818,49,7,'1998-01-07 00:00:00','1998-02-04 00:00:00','1998-01-12 00:00:00',3,65.4800,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10819,12,2,'1998-01-07 00:00:00','1998-02-04 00:00:00','1998-01-16 00:00:00',3,19.7600,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina')
,(10820,65,3,'1998-01-07 00:00:00','1998-02-04 00:00:00','1998-01-13 00:00:00',2,37.5200,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10821,75,1,'1998-01-08 00:00:00','1998-02-05 00:00:00','1998-01-15 00:00:00',1,36.6800,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA')
,(10822,82,6,'1998-01-08 00:00:00','1998-02-05 00:00:00','1998-01-16 00:00:00',3,7.0000,'Trail-s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA')
,(10823,46,5,'1998-01-09 00:00:00','1998-02-06 00:00:00','1998-01-13 00:00:00',2,163.9700,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10824,24,8,'1998-01-09 00:00:00','1998-02-06 00:00:00','1998-01-30 00:00:00',1,1.2300,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10825,17,1,'1998-01-09 00:00:00','1998-02-06 00:00:00','1998-01-14 00:00:00',1,79.2500,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany')
,(10826,7,6,'1998-01-12 00:00:00','1998-02-09 00:00:00','1998-02-06 00:00:00',1,7.0900,'Blondel pre et fils','24, place Klber','Strasbourg',NULL,'67000','France')
,(10827,9,1,'1998-01-12 00:00:00','1998-01-26 00:00:00','1998-02-06 00:00:00',2,63.5400,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10828,64,9,'1998-01-13 00:00:00','1998-01-27 00:00:00','1998-02-04 00:00:00',1,90.8500,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina')
,(10829,38,9,'1998-01-13 00:00:00','1998-02-10 00:00:00','1998-01-23 00:00:00',1,154.7200,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10830,81,4,'1998-01-13 00:00:00','1998-02-24 00:00:00','1998-01-21 00:00:00',2,81.8300,'Tradiao Hipermercados','Av. Ins de Castro, 414','Sao Paulo','SP','05634-030','Brazil')
,(10831,70,3,'1998-01-14 00:00:00','1998-02-11 00:00:00','1998-01-23 00:00:00',2,72.1900,'Sant Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway')
,(10832,41,2,'1998-01-14 00:00:00','1998-02-11 00:00:00','1998-01-19 00:00:00',2,43.2600,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10833,56,6,'1998-01-15 00:00:00','1998-02-12 00:00:00','1998-01-23 00:00:00',2,71.4900,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(10834,81,1,'1998-01-15 00:00:00','1998-02-12 00:00:00','1998-01-19 00:00:00',3,29.7800,'Tradiao Hipermercados','Av. Ins de Castro, 414','Sao Paulo','SP','05634-030','Brazil')
,(10835,1,1,'1998-01-15 00:00:00','1998-02-12 00:00:00','1998-01-21 00:00:00',3,69.5300,'Alfred-s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany')
,(10836,20,7,'1998-01-16 00:00:00','1998-02-13 00:00:00','1998-01-21 00:00:00',1,411.8800,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10837,5,9,'1998-01-16 00:00:00','1998-02-13 00:00:00','1998-01-23 00:00:00',3,13.3200,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10838,47,3,'1998-01-19 00:00:00','1998-02-16 00:00:00','1998-01-23 00:00:00',3,59.2800,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10839,81,3,'1998-01-19 00:00:00','1998-02-16 00:00:00','1998-01-22 00:00:00',3,35.4300,'Tradiao Hipermercados','Av. Ins de Castro, 414','Sao Paulo','SP','05634-030','Brazil')
,(10840,47,4,'1998-01-19 00:00:00','1998-03-02 00:00:00','1998-02-16 00:00:00',2,2.7100,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10841,76,5,'1998-01-20 00:00:00','1998-02-17 00:00:00','1998-01-29 00:00:00',2,424.3000,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10842,80,1,'1998-01-20 00:00:00','1998-02-17 00:00:00','1998-01-29 00:00:00',3,54.4200,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(10843,86,4,'1998-01-21 00:00:00','1998-02-18 00:00:00','1998-01-26 00:00:00',2,9.2600,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10844,59,8,'1998-01-21 00:00:00','1998-02-18 00:00:00','1998-01-26 00:00:00',2,25.2200,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(10845,63,8,'1998-01-21 00:00:00','1998-02-04 00:00:00','1998-01-30 00:00:00',1,212.9800,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10846,76,2,'1998-01-22 00:00:00','1998-03-05 00:00:00','1998-01-23 00:00:00',3,56.4600,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10847,71,4,'1998-01-22 00:00:00','1998-02-05 00:00:00','1998-02-10 00:00:00',3,487.5700,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10848,16,7,'1998-01-23 00:00:00','1998-02-20 00:00:00','1998-01-29 00:00:00',2,38.2400,'Consolidated Holdings','Berkeley Gardens 12 Brewery','London',NULL,'WX1 6LT','UK')
,(10849,39,9,'1998-01-23 00:00:00','1998-02-20 00:00:00','1998-01-30 00:00:00',2,0.5600,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10850,86,1,'1998-01-23 00:00:00','1998-03-06 00:00:00','1998-01-30 00:00:00',1,49.1900,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France')
,(10851,67,5,'1998-01-26 00:00:00','1998-02-23 00:00:00','1998-02-02 00:00:00',1,160.5500,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10852,65,8,'1998-01-26 00:00:00','1998-02-09 00:00:00','1998-01-30 00:00:00',1,174.0500,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10853,6,9,'1998-01-27 00:00:00','1998-02-24 00:00:00','1998-02-03 00:00:00',2,53.8300,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany')
,(10854,20,3,'1998-01-27 00:00:00','1998-02-24 00:00:00','1998-02-05 00:00:00',2,100.2200,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10855,55,3,'1998-01-27 00:00:00','1998-02-24 00:00:00','1998-02-04 00:00:00',1,170.9700,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(10856,3,3,'1998-01-28 00:00:00','1998-02-25 00:00:00','1998-02-10 00:00:00',2,58.4300,'Antonio Moreno Taquera','Mataderos 2312','Mxico D.F.',NULL,'5023','Mexico')
,(10857,5,8,'1998-01-28 00:00:00','1998-02-25 00:00:00','1998-02-06 00:00:00',2,188.8500,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10858,40,2,'1998-01-29 00:00:00','1998-02-26 00:00:00','1998-02-03 00:00:00',1,52.5100,'La corne d-abondance','67, avenue de l-Europe','Versailles',NULL,'78000','France')
,(10859,25,1,'1998-01-29 00:00:00','1998-02-26 00:00:00','1998-02-02 00:00:00',2,76.1000,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10860,26,3,'1998-01-29 00:00:00','1998-02-26 00:00:00','1998-02-04 00:00:00',3,19.2600,'France restauration','54, rue Royale','Nantes',NULL,'44000','France')
,(10861,91,4,'1998-01-30 00:00:00','1998-02-27 00:00:00','1998-02-17 00:00:00',2,14.9300,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10862,44,8,'1998-01-30 00:00:00','1998-03-13 00:00:00','1998-02-02 00:00:00',2,53.2300,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10863,35,4,'1998-02-02 00:00:00','1998-03-02 00:00:00','1998-02-17 00:00:00',2,30.2600,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10864,4,4,'1998-02-02 00:00:00','1998-03-02 00:00:00','1998-02-09 00:00:00',2,3.0400,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10865,63,2,'1998-02-02 00:00:00','1998-02-16 00:00:00','1998-02-12 00:00:00',1,348.1400,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10866,5,5,'1998-02-03 00:00:00','1998-03-03 00:00:00','1998-02-12 00:00:00',1,109.1100,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10867,48,6,'1998-02-03 00:00:00','1998-03-17 00:00:00','1998-02-11 00:00:00',1,1.9300,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA')
,(10868,62,7,'1998-02-04 00:00:00','1998-03-04 00:00:00','1998-02-23 00:00:00',2,191.2700,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10869,72,5,'1998-02-04 00:00:00','1998-03-04 00:00:00','1998-02-09 00:00:00',1,143.2800,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK')
,(10870,93,5,'1998-02-04 00:00:00','1998-03-04 00:00:00','1998-02-13 00:00:00',3,12.0400,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland')
,(10871,9,9,'1998-02-05 00:00:00','1998-03-05 00:00:00','1998-02-10 00:00:00',2,112.2700,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10872,30,5,'1998-02-05 00:00:00','1998-03-05 00:00:00','1998-02-09 00:00:00',2,175.3200,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(10873,92,4,'1998-02-06 00:00:00','1998-03-06 00:00:00','1998-02-09 00:00:00',1,0.8200,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland')
,(10874,30,5,'1998-02-06 00:00:00','1998-03-06 00:00:00','1998-02-11 00:00:00',2,19.5800,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(10875,5,4,'1998-02-06 00:00:00','1998-03-06 00:00:00','1998-03-03 00:00:00',2,32.3700,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10876,9,7,'1998-02-09 00:00:00','1998-03-09 00:00:00','1998-02-12 00:00:00',3,60.4200,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10877,67,1,'1998-02-09 00:00:00','1998-03-09 00:00:00','1998-02-19 00:00:00',1,38.0600,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(10878,63,4,'1998-02-10 00:00:00','1998-03-10 00:00:00','1998-02-12 00:00:00',1,46.6900,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10879,92,3,'1998-02-10 00:00:00','1998-03-10 00:00:00','1998-02-12 00:00:00',3,8.5000,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland')
,(10880,24,7,'1998-02-10 00:00:00','1998-03-24 00:00:00','1998-02-18 00:00:00',1,88.0100,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10881,12,4,'1998-02-11 00:00:00','1998-03-11 00:00:00','1998-02-18 00:00:00',1,2.8400,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina')
,(10882,71,4,'1998-02-11 00:00:00','1998-03-11 00:00:00','1998-02-20 00:00:00',3,23.1000,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10883,48,8,'1998-02-12 00:00:00','1998-03-12 00:00:00','1998-02-20 00:00:00',3,0.5300,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA')
,(10884,45,4,'1998-02-12 00:00:00','1998-03-12 00:00:00','1998-02-13 00:00:00',2,90.9700,'Let-s Stop N Shop','87 Polk St. Suite 5','San Francisco','CA','94117','USA')
,(10885,76,6,'1998-02-12 00:00:00','1998-03-12 00:00:00','1998-02-18 00:00:00',3,5.6400,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10886,34,1,'1998-02-13 00:00:00','1998-03-13 00:00:00','1998-03-02 00:00:00',1,4.9900,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10887,29,8,'1998-02-13 00:00:00','1998-03-13 00:00:00','1998-02-16 00:00:00',3,1.2500,'Galera del gastronmo','Rambla de Catalua, 23','Barcelona',NULL,'8022','Spain')
,(10888,30,1,'1998-02-16 00:00:00','1998-03-16 00:00:00','1998-02-23 00:00:00',2,51.8700,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(10889,65,9,'1998-02-16 00:00:00','1998-03-16 00:00:00','1998-02-23 00:00:00',3,280.6100,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10890,18,7,'1998-02-16 00:00:00','1998-03-16 00:00:00','1998-02-18 00:00:00',1,32.7600,'Du monde entier','67, rue des Cinquante Otages','Nantes',NULL,'44000','France')
,(10891,44,7,'1998-02-17 00:00:00','1998-03-17 00:00:00','1998-02-19 00:00:00',2,20.3700,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10892,50,4,'1998-02-17 00:00:00','1998-03-17 00:00:00','1998-02-19 00:00:00',2,120.2700,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium')
,(10893,39,9,'1998-02-18 00:00:00','1998-03-18 00:00:00','1998-02-20 00:00:00',2,77.7800,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(10894,71,1,'1998-02-18 00:00:00','1998-03-18 00:00:00','1998-02-20 00:00:00',1,116.1300,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10895,20,3,'1998-02-18 00:00:00','1998-03-18 00:00:00','1998-02-23 00:00:00',1,162.7500,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10896,50,7,'1998-02-19 00:00:00','1998-03-19 00:00:00','1998-02-27 00:00:00',3,32.4500,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium')
,(10897,37,3,'1998-02-19 00:00:00','1998-03-19 00:00:00','1998-02-25 00:00:00',2,603.5400,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10898,54,4,'1998-02-20 00:00:00','1998-03-20 00:00:00','1998-03-06 00:00:00',2,1.2700,'Ocano Atlntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina')
,(10899,46,5,'1998-02-20 00:00:00','1998-03-20 00:00:00','1998-02-26 00:00:00',3,1.2100,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10900,90,1,'1998-02-20 00:00:00','1998-03-20 00:00:00','1998-03-04 00:00:00',2,1.6600,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil')
,(10901,35,4,'1998-02-23 00:00:00','1998-03-23 00:00:00','1998-02-26 00:00:00',1,62.0900,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10902,24,1,'1998-02-23 00:00:00','1998-03-23 00:00:00','1998-03-03 00:00:00',1,44.1500,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10903,34,3,'1998-02-24 00:00:00','1998-03-24 00:00:00','1998-03-04 00:00:00',3,36.7100,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10904,91,3,'1998-02-24 00:00:00','1998-03-24 00:00:00','1998-02-27 00:00:00',3,162.9500,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(10905,90,9,'1998-02-24 00:00:00','1998-03-24 00:00:00','1998-03-06 00:00:00',2,13.7200,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil')
,(10906,93,4,'1998-02-25 00:00:00','1998-03-11 00:00:00','1998-03-03 00:00:00',3,26.2900,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland')
,(10907,74,6,'1998-02-25 00:00:00','1998-03-25 00:00:00','1998-02-27 00:00:00',3,9.1900,'Spcialits du monde','25, rue Lauriston','Paris',NULL,'75016','France')
,(10908,66,4,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-06 00:00:00',2,32.9600,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10909,70,1,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-10 00:00:00',2,53.0500,'Sant Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway')
,(10910,92,1,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-04 00:00:00',3,38.1100,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland')
,(10911,30,3,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-05 00:00:00',1,38.1900,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(10912,37,2,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-18 00:00:00',2,580.9100,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10913,62,4,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-04 00:00:00',1,33.0500,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10914,62,6,'1998-02-27 00:00:00','1998-03-27 00:00:00','1998-03-02 00:00:00',1,21.1900,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10915,80,2,'1998-02-27 00:00:00','1998-03-27 00:00:00','1998-03-02 00:00:00',2,3.5100,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(10916,64,1,'1998-02-27 00:00:00','1998-03-27 00:00:00','1998-03-09 00:00:00',2,63.7700,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina')
,(10917,69,4,'1998-03-02 00:00:00','1998-03-30 00:00:00','1998-03-11 00:00:00',2,8.2900,'Romero y tomillo','Gran Va, 1','Madrid',NULL,'28001','Spain')
,(10918,10,3,'1998-03-02 00:00:00','1998-03-30 00:00:00','1998-03-11 00:00:00',3,48.8300,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10919,47,2,'1998-03-02 00:00:00','1998-03-30 00:00:00','1998-03-04 00:00:00',2,19.8000,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10920,4,4,'1998-03-03 00:00:00','1998-03-31 00:00:00','1998-03-09 00:00:00',2,29.6100,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10921,83,1,'1998-03-03 00:00:00','1998-04-14 00:00:00','1998-03-09 00:00:00',1,176.4800,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10922,34,5,'1998-03-03 00:00:00','1998-03-31 00:00:00','1998-03-05 00:00:00',3,62.7400,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10923,41,7,'1998-03-03 00:00:00','1998-04-14 00:00:00','1998-03-13 00:00:00',3,68.2600,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(10924,5,3,'1998-03-04 00:00:00','1998-04-01 00:00:00','1998-04-08 00:00:00',2,151.5200,'Berglunds snabbkp','Berguvsvgen 8','Lule',NULL,'S-958 22','Sweden')
,(10925,34,3,'1998-03-04 00:00:00','1998-04-01 00:00:00','1998-03-13 00:00:00',1,2.2700,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10926,2,4,'1998-03-04 00:00:00','1998-04-01 00:00:00','1998-03-11 00:00:00',3,39.9200,'Ana Trujillo Emparedados y helados','Avda. de la Constitucin 2222','Mxico D.F.',NULL,'5021','Mexico')
,(10927,40,4,'1998-03-05 00:00:00','1998-04-02 00:00:00','1998-04-08 00:00:00',1,19.7900,'La corne d-abondance','67, avenue de l-Europe','Versailles',NULL,'78000','France')
,(10928,29,1,'1998-03-05 00:00:00','1998-04-02 00:00:00','1998-03-18 00:00:00',1,1.3600,'Galera del gastronmo','Rambla de Catalua, 23','Barcelona',NULL,'8022','Spain')
,(10929,25,6,'1998-03-05 00:00:00','1998-04-02 00:00:00','1998-03-12 00:00:00',1,33.9300,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(10930,76,4,'1998-03-06 00:00:00','1998-04-17 00:00:00','1998-03-18 00:00:00',3,15.5500,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(10931,68,4,'1998-03-06 00:00:00','1998-03-20 00:00:00','1998-03-19 00:00:00',2,13.6000,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(10932,9,8,'1998-03-06 00:00:00','1998-04-03 00:00:00','1998-03-24 00:00:00',1,134.6400,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10933,38,6,'1998-03-06 00:00:00','1998-04-03 00:00:00','1998-03-16 00:00:00',3,54.1500,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK')
,(10934,44,3,'1998-03-09 00:00:00','1998-04-06 00:00:00','1998-03-12 00:00:00',3,32.0100,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(10935,90,4,'1998-03-09 00:00:00','1998-04-06 00:00:00','1998-03-18 00:00:00',3,47.5900,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil')
,(10936,32,3,'1998-03-09 00:00:00','1998-04-06 00:00:00','1998-03-18 00:00:00',2,33.6800,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(10937,12,7,'1998-03-10 00:00:00','1998-03-24 00:00:00','1998-03-13 00:00:00',3,31.5100,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina')
,(10938,63,3,'1998-03-10 00:00:00','1998-04-07 00:00:00','1998-03-16 00:00:00',2,31.8900,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10939,49,2,'1998-03-10 00:00:00','1998-04-07 00:00:00','1998-03-13 00:00:00',2,76.3300,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10940,9,8,'1998-03-11 00:00:00','1998-04-08 00:00:00','1998-03-23 00:00:00',3,19.7700,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(10941,71,7,'1998-03-11 00:00:00','1998-04-08 00:00:00','1998-03-20 00:00:00',2,400.8100,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10942,66,9,'1998-03-11 00:00:00','1998-04-08 00:00:00','1998-03-18 00:00:00',3,17.9500,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(10943,11,4,'1998-03-11 00:00:00','1998-04-08 00:00:00','1998-03-19 00:00:00',2,2.1700,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(10944,10,6,'1998-03-12 00:00:00','1998-03-26 00:00:00','1998-03-13 00:00:00',3,52.9200,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10945,52,4,'1998-03-12 00:00:00','1998-04-09 00:00:00','1998-03-18 00:00:00',1,10.2200,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'4179','Germany')
,(10946,83,1,'1998-03-12 00:00:00','1998-04-09 00:00:00','1998-03-19 00:00:00',2,27.2000,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10947,11,3,'1998-03-13 00:00:00','1998-04-10 00:00:00','1998-03-16 00:00:00',2,3.2600,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(10948,30,3,'1998-03-13 00:00:00','1998-04-10 00:00:00','1998-03-19 00:00:00',3,23.3900,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(10949,10,2,'1998-03-13 00:00:00','1998-04-10 00:00:00','1998-03-17 00:00:00',3,74.4400,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10950,49,1,'1998-03-16 00:00:00','1998-04-13 00:00:00','1998-03-23 00:00:00',2,2.5000,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy')
,(10951,68,9,'1998-03-16 00:00:00','1998-04-27 00:00:00','1998-04-07 00:00:00',2,30.8500,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(10952,1,1,'1998-03-16 00:00:00','1998-04-27 00:00:00','1998-03-24 00:00:00',1,40.4200,'Alfred-s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany')
,(10953,4,9,'1998-03-16 00:00:00','1998-03-30 00:00:00','1998-03-25 00:00:00',2,23.7200,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(10954,47,5,'1998-03-17 00:00:00','1998-04-28 00:00:00','1998-03-20 00:00:00',1,27.9100,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(10955,24,8,'1998-03-17 00:00:00','1998-04-14 00:00:00','1998-03-20 00:00:00',2,3.2600,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10956,6,6,'1998-03-17 00:00:00','1998-04-28 00:00:00','1998-03-20 00:00:00',2,44.6500,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany')
,(10957,35,8,'1998-03-18 00:00:00','1998-04-15 00:00:00','1998-03-27 00:00:00',3,105.3600,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10958,54,7,'1998-03-18 00:00:00','1998-04-15 00:00:00','1998-03-27 00:00:00',2,49.5600,'Ocano Atlntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina')
,(10959,31,6,'1998-03-18 00:00:00','1998-04-29 00:00:00','1998-03-23 00:00:00',2,4.9800,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil')
,(10960,35,3,'1998-03-19 00:00:00','1998-04-02 00:00:00','1998-04-08 00:00:00',1,2.0800,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10961,62,8,'1998-03-19 00:00:00','1998-04-16 00:00:00','1998-03-30 00:00:00',1,104.4700,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(10962,63,8,'1998-03-19 00:00:00','1998-04-16 00:00:00','1998-03-23 00:00:00',2,275.7900,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10963,28,9,'1998-03-19 00:00:00','1998-04-16 00:00:00','1998-03-26 00:00:00',3,2.7000,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal')
,(10964,74,3,'1998-03-20 00:00:00','1998-04-17 00:00:00','1998-03-24 00:00:00',2,87.3800,'Spcialits du monde','25, rue Lauriston','Paris',NULL,'75016','France')
,(10965,55,6,'1998-03-20 00:00:00','1998-04-17 00:00:00','1998-03-30 00:00:00',3,144.3800,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(10966,14,4,'1998-03-20 00:00:00','1998-04-17 00:00:00','1998-04-08 00:00:00',1,27.1900,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland')
,(10967,79,2,'1998-03-23 00:00:00','1998-04-20 00:00:00','1998-04-02 00:00:00',2,62.2200,'Toms Spezialitten','Luisenstr. 48','Mnster',NULL,'44087','Germany')
,(10968,20,1,'1998-03-23 00:00:00','1998-04-20 00:00:00','1998-04-01 00:00:00',3,74.6000,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10969,15,1,'1998-03-23 00:00:00','1998-04-20 00:00:00','1998-03-30 00:00:00',2,0.2100,'Comrcio Mineiro','Av. dos Lusadas, 23','Sao Paulo','SP','05432-043','Brazil')
,(10970,8,9,'1998-03-24 00:00:00','1998-04-07 00:00:00','1998-04-24 00:00:00',1,16.1600,'Blido Comidas preparadas','C/ Araquil, 67','Madrid',NULL,'28023','Spain')
,(10971,26,2,'1998-03-24 00:00:00','1998-04-21 00:00:00','1998-04-02 00:00:00',2,121.8200,'France restauration','54, rue Royale','Nantes',NULL,'44000','France')
,(10972,40,4,'1998-03-24 00:00:00','1998-04-21 00:00:00','1998-03-26 00:00:00',2,0.0200,'La corne d-abondance','67, avenue de l-Europe','Versailles',NULL,'78000','France')
,(10973,40,6,'1998-03-24 00:00:00','1998-04-21 00:00:00','1998-03-27 00:00:00',2,15.1700,'La corne d-abondance','67, avenue de l-Europe','Versailles',NULL,'78000','France')
,(10974,75,3,'1998-03-25 00:00:00','1998-04-08 00:00:00','1998-04-03 00:00:00',3,12.9600,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA')
,(10975,10,1,'1998-03-25 00:00:00','1998-04-22 00:00:00','1998-03-27 00:00:00',3,32.2700,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10976,35,1,'1998-03-25 00:00:00','1998-05-06 00:00:00','1998-04-03 00:00:00',1,37.9700,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(10977,24,8,'1998-03-26 00:00:00','1998-04-23 00:00:00','1998-04-10 00:00:00',3,208.5000,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10978,50,9,'1998-03-26 00:00:00','1998-04-23 00:00:00','1998-04-23 00:00:00',2,32.8200,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium')
,(10979,20,8,'1998-03-26 00:00:00','1998-04-23 00:00:00','1998-03-31 00:00:00',2,353.0700,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10980,24,4,'1998-03-27 00:00:00','1998-05-08 00:00:00','1998-04-17 00:00:00',1,1.2600,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10981,34,1,'1998-03-27 00:00:00','1998-04-24 00:00:00','1998-04-02 00:00:00',2,193.3700,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(10982,10,2,'1998-03-27 00:00:00','1998-04-24 00:00:00','1998-04-08 00:00:00',1,14.0100,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(10983,71,2,'1998-03-27 00:00:00','1998-04-24 00:00:00','1998-04-06 00:00:00',2,657.5400,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10984,71,1,'1998-03-30 00:00:00','1998-04-27 00:00:00','1998-04-03 00:00:00',3,211.2200,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(10985,37,2,'1998-03-30 00:00:00','1998-04-27 00:00:00','1998-04-02 00:00:00',1,91.5100,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(10986,54,8,'1998-03-30 00:00:00','1998-04-27 00:00:00','1998-04-21 00:00:00',2,217.8600,'Ocano Atlntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina')
,(10987,19,8,'1998-03-31 00:00:00','1998-04-28 00:00:00','1998-04-06 00:00:00',1,185.4800,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK')
,(10988,65,3,'1998-03-31 00:00:00','1998-04-28 00:00:00','1998-04-10 00:00:00',2,61.1400,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(10989,61,2,'1998-03-31 00:00:00','1998-04-28 00:00:00','1998-04-02 00:00:00',1,34.7600,'Que Delcia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil')
,(10990,20,2,'1998-04-01 00:00:00','1998-05-13 00:00:00','1998-04-07 00:00:00',3,117.6100,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(10991,63,1,'1998-04-01 00:00:00','1998-04-29 00:00:00','1998-04-07 00:00:00',1,38.5100,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10992,77,1,'1998-04-01 00:00:00','1998-04-29 00:00:00','1998-04-03 00:00:00',3,4.2700,'The Big Cheese','89 Jefferson Way Suite 2','Portland','OR','97201','USA')
,(10993,24,7,'1998-04-01 00:00:00','1998-04-29 00:00:00','1998-04-10 00:00:00',3,8.8100,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(10994,83,2,'1998-04-02 00:00:00','1998-04-16 00:00:00','1998-04-09 00:00:00',3,65.5300,'Vaffeljernet','Smagsloget 45','rhus',NULL,'8200','Denmark')
,(10995,58,1,'1998-04-02 00:00:00','1998-04-30 00:00:00','1998-04-06 00:00:00',3,46.0000,'Pericles Comidas clsicas','Calle Dr. Jorge Cash 321','Mxico D.F.',NULL,'5033','Mexico')
,(10996,63,4,'1998-04-02 00:00:00','1998-04-30 00:00:00','1998-04-10 00:00:00',2,1.1200,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(10997,46,8,'1998-04-03 00:00:00','1998-05-15 00:00:00','1998-04-13 00:00:00',2,73.9100,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(10998,93,8,'1998-04-03 00:00:00','1998-04-17 00:00:00','1998-04-17 00:00:00',2,20.3100,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland')
,(10999,56,6,'1998-04-03 00:00:00','1998-05-01 00:00:00','1998-04-10 00:00:00',2,96.3500,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(11000,65,2,'1998-04-06 00:00:00','1998-05-04 00:00:00','1998-04-14 00:00:00',3,55.1200,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA')
,(11001,24,2,'1998-04-06 00:00:00','1998-05-04 00:00:00','1998-04-14 00:00:00',2,197.3000,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(11002,71,4,'1998-04-06 00:00:00','1998-05-04 00:00:00','1998-04-16 00:00:00',1,141.1600,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(11003,78,3,'1998-04-06 00:00:00','1998-05-04 00:00:00','1998-04-08 00:00:00',3,14.9100,'The Cracker Box','55 Grizzly Peak Rd.','Butte','MT','59801','USA')
,(11004,50,3,'1998-04-07 00:00:00','1998-05-05 00:00:00','1998-04-20 00:00:00',1,44.8400,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium')
,(11005,92,2,'1998-04-07 00:00:00','1998-05-05 00:00:00','1998-04-10 00:00:00',1,0.7500,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland')
,(11006,32,3,'1998-04-07 00:00:00','1998-05-05 00:00:00','1998-04-15 00:00:00',2,25.1900,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(11007,60,8,'1998-04-08 00:00:00','1998-05-06 00:00:00','1998-04-13 00:00:00',2,202.2400,'Princesa Isabel Vinhos','Estrada da sade n. 58','Lisboa',NULL,'1756','Portugal')
,(11008,20,7,'1998-04-08 00:00:00','1998-05-06 00:00:00',NULL,3,79.4600,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(11009,30,2,'1998-04-08 00:00:00','1998-05-06 00:00:00','1998-04-10 00:00:00',1,59.1100,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(11010,66,2,'1998-04-09 00:00:00','1998-05-07 00:00:00','1998-04-21 00:00:00',2,28.7100,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(11011,1,3,'1998-04-09 00:00:00','1998-05-07 00:00:00','1998-04-13 00:00:00',1,1.2100,'Alfred-s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany')
,(11012,25,1,'1998-04-09 00:00:00','1998-04-23 00:00:00','1998-04-17 00:00:00',3,242.9500,'Frankenversand','Berliner Platz 43','Mnchen',NULL,'80805','Germany')
,(11013,69,2,'1998-04-09 00:00:00','1998-05-07 00:00:00','1998-04-10 00:00:00',1,32.9900,'Romero y tomillo','Gran Va, 1','Madrid',NULL,'28001','Spain')
,(11014,47,2,'1998-04-10 00:00:00','1998-05-08 00:00:00','1998-04-15 00:00:00',3,23.6000,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(11015,70,2,'1998-04-10 00:00:00','1998-04-24 00:00:00','1998-04-20 00:00:00',2,4.6200,'Sant Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway')
,(11016,4,9,'1998-04-10 00:00:00','1998-05-08 00:00:00','1998-04-13 00:00:00',2,33.8000,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK')
,(11017,20,9,'1998-04-13 00:00:00','1998-05-11 00:00:00','1998-04-20 00:00:00',2,754.2600,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(11018,48,4,'1998-04-13 00:00:00','1998-05-11 00:00:00','1998-04-16 00:00:00',2,11.6500,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA')
,(11019,64,6,'1998-04-13 00:00:00','1998-05-11 00:00:00',NULL,3,3.1700,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina')
,(11020,56,2,'1998-04-14 00:00:00','1998-05-12 00:00:00','1998-04-16 00:00:00',2,43.3000,'Ottilies Kseladen','Mehrheimerstr. 369','Kln',NULL,'50739','Germany')
,(11021,63,3,'1998-04-14 00:00:00','1998-05-12 00:00:00','1998-04-21 00:00:00',1,297.1800,'QUICK-Stop','Taucherstrae 10','Cunewalde',NULL,'1307','Germany')
,(11022,34,9,'1998-04-14 00:00:00','1998-05-12 00:00:00','1998-05-04 00:00:00',2,6.2700,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(11023,11,1,'1998-04-14 00:00:00','1998-04-28 00:00:00','1998-04-24 00:00:00',2,123.8300,'B-s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK')
,(11024,19,4,'1998-04-15 00:00:00','1998-05-13 00:00:00','1998-04-20 00:00:00',1,74.3600,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK')
,(11025,89,6,'1998-04-15 00:00:00','1998-05-13 00:00:00','1998-04-24 00:00:00',3,29.1700,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland')
,(11026,27,4,'1998-04-15 00:00:00','1998-05-13 00:00:00','1998-04-28 00:00:00',1,47.0900,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy')
,(11027,10,1,'1998-04-16 00:00:00','1998-05-14 00:00:00','1998-04-20 00:00:00',1,52.5200,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(11028,39,2,'1998-04-16 00:00:00','1998-05-14 00:00:00','1998-04-22 00:00:00',1,29.5900,'Kniglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany')
,(11029,14,4,'1998-04-16 00:00:00','1998-05-14 00:00:00','1998-04-27 00:00:00',1,47.8400,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland')
,(11030,71,7,'1998-04-17 00:00:00','1998-05-15 00:00:00','1998-04-27 00:00:00',2,830.7500,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(11031,71,6,'1998-04-17 00:00:00','1998-05-15 00:00:00','1998-04-24 00:00:00',2,227.2200,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(11032,91,2,'1998-04-17 00:00:00','1998-05-15 00:00:00','1998-04-23 00:00:00',3,606.1900,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(11033,68,7,'1998-04-17 00:00:00','1998-05-15 00:00:00','1998-04-23 00:00:00',3,84.7400,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(11034,55,8,'1998-04-20 00:00:00','1998-06-01 00:00:00','1998-04-27 00:00:00',1,40.3200,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA')
,(11035,76,2,'1998-04-20 00:00:00','1998-05-18 00:00:00','1998-04-24 00:00:00',2,0.1700,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(11036,17,8,'1998-04-20 00:00:00','1998-05-18 00:00:00','1998-04-22 00:00:00',3,149.4700,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany')
,(11037,30,7,'1998-04-21 00:00:00','1998-05-19 00:00:00','1998-04-27 00:00:00',1,3.2000,'Godos Cocina Tpica','C/ Romero, 33','Sevilla',NULL,'41101','Spain')
,(11038,76,1,'1998-04-21 00:00:00','1998-05-19 00:00:00','1998-04-30 00:00:00',2,29.5900,'Suprmes dlices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium')
,(11039,47,1,'1998-04-21 00:00:00','1998-05-19 00:00:00',NULL,2,65.0000,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela')
,(11040,32,4,'1998-04-22 00:00:00','1998-05-20 00:00:00',NULL,3,18.8400,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(11041,14,3,'1998-04-22 00:00:00','1998-05-20 00:00:00','1998-04-28 00:00:00',2,48.2200,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland')
,(11042,15,2,'1998-04-22 00:00:00','1998-05-06 00:00:00','1998-05-01 00:00:00',1,29.9900,'Comrcio Mineiro','Av. dos Lusadas, 23','Sao Paulo','SP','05432-043','Brazil')
,(11043,74,5,'1998-04-22 00:00:00','1998-05-20 00:00:00','1998-04-29 00:00:00',2,8.8000,'Spcialits du monde','25, rue Lauriston','Paris',NULL,'75016','France')
,(11044,93,4,'1998-04-23 00:00:00','1998-05-21 00:00:00','1998-05-01 00:00:00',1,8.7200,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland')
,(11045,10,6,'1998-04-23 00:00:00','1998-05-21 00:00:00',NULL,2,70.5800,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(11046,88,8,'1998-04-23 00:00:00','1998-05-21 00:00:00','1998-04-24 00:00:00',2,71.6400,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany')
,(11047,19,7,'1998-04-24 00:00:00','1998-05-22 00:00:00','1998-05-01 00:00:00',3,46.6200,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK')
,(11048,10,7,'1998-04-24 00:00:00','1998-05-22 00:00:00','1998-04-30 00:00:00',3,24.1200,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada')
,(11049,31,3,'1998-04-24 00:00:00','1998-05-22 00:00:00','1998-05-04 00:00:00',1,8.3400,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil')
,(11050,24,8,'1998-04-27 00:00:00','1998-05-25 00:00:00','1998-05-05 00:00:00',2,59.4100,'Folk och f HB','kergatan 24','Brcke',NULL,'S-844 67','Sweden')
,(11051,41,7,'1998-04-27 00:00:00','1998-05-25 00:00:00',NULL,3,2.7900,'La maison d-Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France')
,(11052,34,3,'1998-04-27 00:00:00','1998-05-25 00:00:00','1998-05-01 00:00:00',1,67.2600,'Hanari Carnes','Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil')
,(11053,59,2,'1998-04-27 00:00:00','1998-05-25 00:00:00','1998-04-29 00:00:00',2,53.0500,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria')
,(11054,12,8,'1998-04-28 00:00:00','1998-05-26 00:00:00',NULL,1,0.3300,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina')
,(11055,35,7,'1998-04-28 00:00:00','1998-05-26 00:00:00','1998-05-05 00:00:00',2,120.9200,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela')
,(11056,19,8,'1998-04-28 00:00:00','1998-05-12 00:00:00','1998-05-01 00:00:00',2,278.9600,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK')
,(11057,53,3,'1998-04-29 00:00:00','1998-05-27 00:00:00','1998-05-01 00:00:00',3,4.1300,'North/South','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK')
,(11058,6,9,'1998-04-29 00:00:00','1998-05-27 00:00:00',NULL,3,31.1400,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany')
,(11059,67,2,'1998-04-29 00:00:00','1998-06-10 00:00:00',NULL,2,85.8000,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil')
,(11060,27,2,'1998-04-30 00:00:00','1998-05-28 00:00:00','1998-05-04 00:00:00',2,10.9800,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy')
,(11061,32,4,'1998-04-30 00:00:00','1998-06-11 00:00:00',NULL,3,14.0100,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA')
,(11062,66,4,'1998-04-30 00:00:00','1998-05-28 00:00:00',NULL,2,29.9300,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy')
,(11063,37,3,'1998-04-30 00:00:00','1998-05-28 00:00:00','1998-05-06 00:00:00',2,81.7300,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland')
,(11064,71,1,'1998-05-01 00:00:00','1998-05-29 00:00:00','1998-05-04 00:00:00',1,30.0900,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA')
,(11065,46,8,'1998-05-01 00:00:00','1998-05-29 00:00:00',NULL,1,12.9100,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(11066,91,7,'1998-05-01 00:00:00','1998-05-29 00:00:00','1998-05-04 00:00:00',2,44.7200,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA')
,(11067,17,1,'1998-05-04 00:00:00','1998-05-18 00:00:00','1998-05-06 00:00:00',2,7.9800,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany')
,(11068,62,8,'1998-05-04 00:00:00','1998-06-01 00:00:00',NULL,2,81.7500,'Queen Cozinha','Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil')
,(11069,80,1,'1998-05-04 00:00:00','1998-06-01 00:00:00','1998-05-06 00:00:00',2,15.6700,'Tortuga Restaurante','Avda. Azteca 123','Mxico D.F.',NULL,'5033','Mexico')
,(11070,44,2,'1998-05-05 00:00:00','1998-06-02 00:00:00',NULL,1,136.0000,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany')
,(11071,46,1,'1998-05-05 00:00:00','1998-06-02 00:00:00',NULL,1,0.9300,'LILA-Supermercado','Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela')
,(11072,20,4,'1998-05-05 00:00:00','1998-06-02 00:00:00',NULL,2,258.6400,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria')
,(11073,58,2,'1998-05-05 00:00:00','1998-06-02 00:00:00',NULL,2,24.9500,'Pericles Comidas clsicas','Calle Dr. Jorge Cash 321','Mxico D.F.',NULL,'5033','Mexico')
,(11074,73,7,'1998-05-06 00:00:00','1998-06-03 00:00:00',NULL,2,18.4400,'Simons bistro','Vinbltet 34','Kobenhavn',NULL,'1734','Denmark')
,(11075,68,8,'1998-05-06 00:00:00','1998-06-03 00:00:00',NULL,2,6.1900,'Richter Supermarkt','Starenweg 5','Genve',NULL,'1204','Switzerland')
,(11076,9,4,'1998-05-06 00:00:00','1998-06-03 00:00:00',NULL,2,38.2800,'Bon app-','12, rue des Bouchers','Marseille',NULL,'13008','France')
,(11077,65,1,'1998-05-06 00:00:00','1998-06-03 00:00:00',NULL,2,8.5300,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');

DROP TABLE IF EXISTS `Products`;
CREATE TABLE `Products` (
	`ProductID` INTEGER NOT NULL,
	`ProductName` TEXT NOT NULL,
	`SupplierID` INTEGER,
	`CategoryID` INTEGER,
	`QuantityPerUnit` TEXT,
	`UnitPrice` REAL,
	`UnitsInStock` INTEGER,
	`UnitsOnOrder` INTEGER,
	`ReorderLevel` INTEGER,
	`Discontinued` INTEGER NOT NULL,
	CONSTRAINT `products_pk` PRIMARY KEY (`ProductID`)
);
INSERT INTO `Products` (`ProductID`,`ProductName`,`SupplierID`,`CategoryID`,`QuantityPerUnit`,`UnitPrice`,`UnitsInStock`,`UnitsOnOrder`,`ReorderLevel`,`Discontinued`) VALUES
(1,'Chai',1,1,'10 boxes x 20 bags',18.0000,39,0,10,0)
,(2,'Chang',1,1,'24 - 12 oz bottles',19.0000,17,40,25,0)
,(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10.0000,13,70,25,0)
,(4,'Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22.0000,53,0,0,0)
,(5,'Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.3500,0,0,0,1)
,(6,'Grandma''s Boysenberry Spread',3,2,'12 - 8 oz jars',25.0000,120,0,25,0)
,(7,'Uncle Bob''s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30.0000,15,0,10,0)
,(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40.0000,6,0,0,0)
,(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97.0000,29,0,0,1)
,(10,'Ikura',4,8,'12 - 200 ml jars',31.0000,31,0,0,0)
,(11,'Queso Cabrales',5,4,'1 kg pkg.',21.0000,22,30,30,0)
,(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38.0000,86,0,0,0)
,(13,'Konbu',6,8,'2 kg box',6.0000,24,0,5,0)
,(14,'Tofu',6,7,'40 - 100 g pkgs.',23.2500,35,0,0,0)
,(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5000,39,0,5,0)
,(16,'Pavlova',7,3,'32 - 500 g boxes',17.4500,29,0,10,0)
,(17,'Alice Mutton',7,6,'20 - 1 kg tins',39.0000,0,0,0,1)
,(18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5000,42,0,0,0)
,(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2000,25,0,5,0)
,(20,'Sir Rodney''s Marmalade',8,3,'30 gift boxes',81.0000,40,0,0,0)
,(21,'Sir Rodney''s Scones',8,3,'24 pkgs. x 4 pieces',10.0000,3,40,5,0)
,(22,'Gustaf''s Knckebrd',9,5,'24 - 500 g pkgs.',21.0000,104,0,25,0)
,(23,'Tunnbrd',9,5,'12 - 250 g pkgs.',9.0000,61,0,25,0)
,(24,'Guaran Fantstica',10,1,'12 - 355 ml cans',4.5000,20,0,0,1)
,(25,'NuNuCa Nu-Nougat-Creme',11,3,'20 - 450 g glasses',14.0000,76,0,30,0)
,(26,'Gumbr Gummibrchen',11,3,'100 - 250 g bags',31.2300,15,0,0,0)
,(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9000,49,0,30,0)
,(28,'Rssle Sauerkraut',12,7,'25 - 825 g cans',45.6000,26,0,0,1)
,(29,'Thringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.7900,0,0,0,1)
,(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.8900,10,0,15,0)
,(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5000,0,70,20,0)
,(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32.0000,9,40,25,0)
,(33,'Geitost',15,4,'500 g',2.5000,112,0,20,0)
,(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14.0000,111,0,15,0)
,(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18.0000,20,0,15,0)
,(36,'Inlagd Sill',17,8,'24 - 250 g  jars',19.0000,112,0,20,0)
,(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26.0000,11,50,25,0)
,(38,'Cte de Blaye',18,1,'12 - 75 cl bottles',263.5000,17,0,15,0)
,(39,'Chartreuse verte',18,1,'750 cc per bottle',18.0000,69,0,5,0)
,(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4000,123,0,30,0)
,(41,'Jack''s New England Clam Chowder',19,8,'12 - 12 oz cans',9.6500,85,0,10,0)
,(42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14.0000,26,0,0,1)
,(43,'Ipoh Coffee',20,1,'16 - 500 g tins',46.0000,17,10,25,0)
,(44,'Gula Malacca',20,2,'20 - 2 kg bags',19.4500,27,0,15,0)
,(45,'Rogede sild',21,8,'1k pkg.',9.5000,5,70,15,0)
,(46,'Spegesild',21,8,'4 - 450 g glasses',12.0000,95,0,0,0)
,(47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5000,36,0,0,0)
,(48,'Chocolade',22,3,'10 pkgs.',12.7500,15,70,25,0)
,(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20.0000,10,60,15,0)
,(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.2500,65,0,30,0)
,(51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53.0000,20,0,10,0)
,(52,'Filo Mix',24,5,'16 - 2 kg boxes',7.0000,38,0,25,0)
,(53,'Perth Pasties',24,6,'48 pieces',32.8000,0,0,0,1)
,(54,'Tourtire',25,6,'16 pies',7.4500,21,0,10,0)
,(55,'Pt chinois',25,6,'24 boxes x 2 pies',24.0000,115,0,20,0)
,(56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38.0000,21,10,30,0)
,(57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5000,36,0,20,0)
,(58,'Escargots de Bourgogne',27,8,'24 pieces',13.2500,62,0,20,0)
,(59,'Raclette Courdavault',28,4,'5 kg pkg.',55.0000,79,0,0,0)
,(60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34.0000,19,0,0,0)
,(61,'Sirop d''rable',29,2,'24 - 500 ml bottles',28.5000,113,0,25,0)
,(62,'Tarte au sucre',29,3,'48 pies',49.3000,17,0,0,0)
,(63,'Vegie-spread',7,2,'15 - 625 g jars',43.9000,24,0,5,0)
,(64,'Wimmers gute Semmelkndel',12,5,'20 bags x 4 pieces',33.2500,22,80,30,0)
,(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.0500,76,0,0,0)
,(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17.0000,4,100,20,0)
,(67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14.0000,52,0,10,0)
,(68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5000,6,10,15,0)
,(69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36.0000,26,0,15,0)
,(70,'Outback Lager',7,1,'24 - 355 ml bottles',15.0000,15,10,30,0)
,(71,'Flotemysost',15,4,'10 - 500 g pkgs.',21.5000,26,0,0,0)
,(72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8000,14,0,0,0)
,(73,'Rd Kaviar',17,8,'24 - 150 g jars',15.0000,101,0,5,0)
,(74,'Longlife Tofu',4,7,'5 kg pkg.',10.0000,4,20,5,0)
,(75,'Rhnbru Klosterbier',12,1,'24 - 0.5 l bottles',7.7500,125,0,25,0)
,(76,'Lakkalikri',23,1,'500 ml',18.0000,57,0,20,0)
,(77,'Original Frankfurter grne Soe',12,2,'12 boxes',13.0000,32,0,15,0)
,(78,'Special chai',1,1,'10 boxes x 20 bags',18.0000,39,0,10,0);

DROP TABLE IF EXISTS `Region`;
CREATE TABLE `Region` (
	`RegionID` INTEGER NOT NULL,
	`RegionDescription` TEXT NOT NULL,
	CONSTRAINT `REGION_PK` PRIMARY KEY (`RegionID`)
);
INSERT INTO `Region` (`RegionID`,`RegionDescription`) VALUES
(1,'Eastern'),
(2,'Westerns'),
(3,'Northern'),
(4,'Southern');

DROP TABLE IF EXISTS `Shippers`;
CREATE TABLE `Shippers` (
	`ShipperID` INTEGER NOT NULL,
	`CompanyName` TEXT NOT NULL,
	`Phone` TEXT DEFAULT NULL,
	CONSTRAINT `SHIPPERS_PK` PRIMARY KEY (`ShipperID`)
);
INSERT INTO `Shippers` (`ShipperID`,`CompanyName`,`Phone`) VALUES
(1,'Speedy Express','(503) 555-9831'),
(2,'United Package','(503) 555-3199'),
(3,'Federal Shipping','(503) 555-9931');

DROP TABLE IF EXISTS `Suppliers`;
CREATE TABLE `Suppliers` (
	`SupplierID` INTEGER NOT NULL,
	`CompanyName` TEXT NOT NULL,
	`ContactName` TEXT DEFAULT NULL,
	`ContactTitle` TEXT DEFAULT NULL,
	`Address` TEXT DEFAULT NULL,
	`City` TEXT DEFAULT NULL,
	`Region` TEXT DEFAULT NULL,
	`PostalCode` TEXT DEFAULT NULL,
	`Country` TEXT DEFAULT NULL,
	`Phone` TEXT DEFAULT NULL,
	`Fax` TEXT DEFAULT NULL,
	`HomePage` TEXT,
	CONSTRAINT `SUPPLIERS_PK` PRIMARY KEY (`SupplierID`)
);
INSERT INTO `Suppliers` (`SupplierID`,`CompanyName`,`ContactName`,`ContactTitle`,`Address`,`City`,`Region`,`PostalCode`,`Country`,`Phone`,`Fax`,`HomePage`) VALUES
(1,'Exotic Liquids','Charlotte Cooper','Purchasing Manager','49 Gilbert St.','London',NULL,'EC1 4SD','UK','(171) 555-2222',NULL,NULL),
(2,'New Orleans Cajun Delights','Shelley Burke','Order Administrator','P.O. Box 78934','New Orleans','LA','70117','USA','(100) 555-4822',NULL,'#CAJUN.HTM#'),
(3,'Grandma Kelly''s Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.','Ann Arbor','MI','48104','USA','(313) 555-5735','(313) 555-3349',NULL),
(4,'Tokyo Traders','Yoshi Nagase','Marketing Manager','9-8 Sekimai Musashino-shi','Tokyo',NULL,'100','Japan','(03) 3555-5011',NULL,NULL),
(5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra ','Export Administrator','Calle del Rosal 4','Oviedo','Asturias','33007','Spain','(98) 598 76 54',NULL,NULL),
(6,'Mayumi''s','Mayumi Ohno','Marketing Representative','92 Setsuko Chuo-ku','Osaka',NULL,'545','Japan','(06) 431-7877',NULL,'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#'),
(7,'Pavlova, Ltd.','Ian Devling','Marketing Manager','74 Rose St. Moonie Ponds','Melbourne','Victoria','3058','Australia','(03) 444-2343','(03) 444-6588',NULL),
(8,'Specialty Biscuits, Ltd.','Peter Wilson','Sales Representative','29 King''s Way','Manchester',NULL,'M14 GSD','UK','(161) 555-4448',NULL,NULL),
(9,'PB Knckebrd AB','Lars Peterson','Sales Agent','Kaloadagatan 13','Gteborg',NULL,'S-345 67','Sweden ','031-987 65 43','031-987 65 91',NULL),
(10,'Refrescos Americanas LTDA','Carlos Diaz','Marketing Manager','Av. das Americanas 12.890','So Paulo',NULL,'5442','Brazil','(11) 555 4640',NULL,NULL),
(11,'Heli Swaren GmbH & Co. KG','Petra Winkler','Sales Manager','Tiergartenstrae 5','Berlin',NULL,'10785','Germany','(010) 9984510',NULL,NULL),
(12,'Plutzer Lebensmittelgromrkte AG','Martin Bein','International Marketing Mgr.','Bogenallee 51','Frankfurt',NULL,'60439','Germany','(069) 992755',NULL,'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#'),
(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coordinator Foreign Markets','Frahmredder 112a','Cuxhaven',NULL,'27478','Germany','(04721) 8713','(04721) 8714',NULL),
(14,'Formaggi Fortini s.r.l.','Elio Rossi','Sales Representative','Viale Dante, 75','Ravenna',NULL,'48100','Italy','(0544) 60323','(0544) 60603','#FORMAGGI.HTM#'),
(15,'Norske Meierier','Beate Vileid','Marketing Manager','Hatlevegen 5','Sandvika',NULL,'1320','Norway','(0)2-953010',NULL,NULL),
(16,'Bigfoot Breweries','Cheryl Saylor','Regional Account Rep.','3400 - 8th Avenue Suite 210','Bend','OR','97101','USA','(503) 555-9931',NULL,NULL),
(17,'Svensk Sjfda AB','Michael Bjrn','Sales Representative','Brovallavgen 231','Stockholm',NULL,'S-123 45','Sweden','08-123 45 67',NULL,NULL),
(18,'Aux joyeux ecclsiastiques','Guylne Nodier','Sales Manager','203, Rue des Francs-Bourgeois','Paris',NULL,'75004','France','(1) 03.83.00.68','(1) 03.83.00.62',NULL),
(19,'New England Seafood Cannery','Robb Merchant','Wholesale Account Agent','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','MA','02134','USA','(617) 555-3267','(617) 555-3389',NULL),
(20,'Leka Trading','Chandra Leka','Owner','471 Serangoon Loop, Suite #402','Singapore',NULL,'0512','Singapore','555-8787',NULL,NULL),
(21,'Lyngbysild','Niels Petersen','Sales Manager','Lyngbysild Fiskebakken 10','Lyngby',NULL,'2800','Denmark','43844108','43844115',NULL),
(22,'Zaanse Snoepfabriek','Dirk Luchte','Accounting Manager','Verkoop Rijnweg 22','Zaandam',NULL,'9999 ZZ','Netherlands','(12345) 1212','(12345) 1210',NULL),
(23,'Karkki Oy','Anne Heikkonen','Product Manager','Valtakatu 12','Lappeenranta',NULL,'53120','Finland','(953) 10956',NULL,NULL),
(24,'G''day, Mate','Wendy Mackenzie','Sales Representative','170 Prince Edward Parade Hunter''s Hill','Sydney','NSW','2042','Australia','(02) 555-5914','(02) 555-4873','G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),
(25,'Ma Maison','Jean-Guy Lauzon','Marketing Manager','2960 Rue St. Laurent','Montral','Qubec','H1J 1C3','Canada','(514) 555-9022',NULL,NULL),
(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Order Administrator','Via dei Gelsomini, 153','Salerno',NULL,'84100','Italy','(089) 6547665','(089) 6547667',NULL),
(27,'Escargots Nouveaux','Marie Delamare','Sales Manager','22, rue H. Voiron','Montceau',NULL,'71300','France','85.57.00.07',NULL,NULL),
(28,'Gai pturage','Eliane Noz','Sales Representative','Bat. B 3, rue des Alpes','Annecy',NULL,'74000','France','38.76.98.06','38.76.98.58',NULL),
(29,'Forts d''rables','Chantal Goulet','Accounting Manager','148 rue Chasseur','Ste-Hyacinthe','Qubec','J2S 7S8','Canada','(514) 555-2955','(514) 555-2921',NULL);

DROP TABLE IF EXISTS `Territories`;
CREATE TABLE `Territories` (
	`TerritoryID` INTEGER NOT NULL,
	`TerritoryDescription` TEXT NOT NULL,
	`RegionID` INTEGER NOT NULL,
	CONSTRAINT `TERRITORIES_PK` PRIMARY KEY (`TerritoryID`),
	CONSTRAINT `FK_Territories_Region` FOREIGN KEY (`RegionID`) REFERENCES `Region`(`RegionID`)
);
INSERT INTO `Territories` (`TerritoryID`,`TerritoryDescription`,`RegionID`) VALUES
(1581,'Westboro',1),
(1730,'Bedford',1),
(1833,'Georgetow',1),
(2116,'Boston',1),
(2139,'Cambridge',1),
(2184,'Braintree',1),
(2903,'Providence',1),
(3049,'Hollis',3),
(3801,'Portsmouth',3),
(6897,'Wilton',1),
(7960,'Morristown',1),
(8837,'Edison',1),
(10019,'New York',1),
(10038,'New York',1),
(11747,'Mellvile',1),
(14450,'Fairport',1),
(19428,'Philadelphia',3),
(19713,'Neward',1),
(20852,'Rockville',1),
(27403,'Greensboro',1),
(27511,'Cary',1),
(29202,'Columbia',4),
(30346,'Atlanta',4),
(31406,'Savannah',4),
(32859,'Orlando',4),
(33607,'Tampa',4),
(40222,'Louisville',1),
(44122,'Beachwood',3),
(45839,'Findlay',3),
(48075,'Southfield',3),
(48084,'Troy',3),
(48304,'Bloomfield Hills',3),
(53404,'Racine',3),
(55113,'Roseville',3),
(55439,'Minneapolis',3),
(60179,'Hoffman Estates',2),
(60601,'Chicago',2),
(72716,'Bentonville',4),
(75234,'Dallas',4),
(78759,'Austin',4),
(80202,'Denver',2),
(80909,'Colorado Springs',2),
(85014,'Phoenix',2),
(85251,'Scottsdale',2),
(90405,'Santa Monica',2),
(94025,'Menlo Park',2),
(94105,'San Francisco',2),
(95008,'Campbell',2),
(95054,'Santa Clara',2),
(95060,'Santa Cruz',2),
(98004,'Bellevue',2),
(98052,'Redmond',2),
(98104,'Seattle',2);
