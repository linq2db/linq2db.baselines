﻿-- SQLite.MS MariaDB.10.MySqlConnector MySql

SELECT
	`e`.`IsDeleted`,
	`e`.`CustomerID`,
	`e`.`CompanyName`,
	`e`.`ContactName`,
	`e`.`ContactTitle`,
	`e`.`Address`,
	`e`.`City`,
	`e`.`Region`,
	`e`.`PostalCode`,
	`e`.`Country`,
	`e`.`Phone`,
	`e`.`Fax`
FROM
	`Customers` `e`
WHERE
	LOCATE('anything', `e`.`Address`) > 0



