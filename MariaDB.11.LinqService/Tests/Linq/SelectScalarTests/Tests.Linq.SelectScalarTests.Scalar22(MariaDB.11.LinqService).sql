BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p1`.`FirstName`,
	`p1`.`PersonID`,
	`p1`.`LastName`,
	`p1`.`MiddleName`,
	`p1`.`Gender`
FROM
	`Person` `p1`
WHERE
	`p1`.`PersonID` = 1

