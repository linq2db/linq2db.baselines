BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p1`.`PersonID`,
	`p1`.`FirstName`,
	`p1`.`LastName`
FROM
	`Person` `p1`
WHERE
	`p1`.`PersonID` = 1 AND `p1`.`FirstName` = `p1`.`FirstName` AND
	`p1`.`LastName` = `p1`.`LastName`

