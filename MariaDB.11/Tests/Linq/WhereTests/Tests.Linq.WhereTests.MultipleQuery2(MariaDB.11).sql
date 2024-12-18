﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`MiddleName` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @str VarChar(3) -- String
SET     @str = '123'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`MiddleName` = @str AND `p`.`MiddleName` IS NOT NULL

