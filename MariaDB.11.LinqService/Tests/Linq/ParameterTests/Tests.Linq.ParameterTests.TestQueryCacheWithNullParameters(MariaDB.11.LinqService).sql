BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = @id

