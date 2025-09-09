BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`a_PersonDoctor`.`FirstName`
FROM
	`Doctor` `d`
		INNER JOIN `Person` `a_PersonDoctor` ON `d`.`PersonID` = `a_PersonDoctor`.`PersonID`

