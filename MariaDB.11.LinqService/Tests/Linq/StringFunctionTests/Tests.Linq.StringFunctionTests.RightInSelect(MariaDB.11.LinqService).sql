BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Right(`p`.`FirstName`, 3)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

