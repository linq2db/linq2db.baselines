BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	`p`.`MiddleName`,
	`p`.`FirstName`,
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

