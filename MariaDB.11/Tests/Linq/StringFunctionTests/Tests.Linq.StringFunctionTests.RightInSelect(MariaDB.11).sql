BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	RIGHT(`p`.`FirstName`, 3)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

