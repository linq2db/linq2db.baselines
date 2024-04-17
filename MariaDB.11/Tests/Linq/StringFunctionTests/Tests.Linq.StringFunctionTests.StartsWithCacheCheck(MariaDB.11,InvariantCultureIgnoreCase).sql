BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	Lower(`p`.`FirstName`) LIKE 'joh%' ESCAPE '~' AND `p`.`PersonID` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	Lower(`p`.`FirstName`) NOT LIKE 'joh%' ESCAPE '~' AND
	`p`.`PersonID` = 1

