﻿-- MariaDB.10.MySqlConnector MySql
DECLARE @value VarChar(8) -- String
SET     @value = 'anything'

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
	LOCATE(@value, `e`.`Address`) > 0



