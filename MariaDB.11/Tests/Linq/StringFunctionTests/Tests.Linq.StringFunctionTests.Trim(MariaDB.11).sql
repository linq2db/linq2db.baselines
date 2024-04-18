BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Trim(Concat('  ', `p`.`FirstName`, ' ')) = 'John' AND
	`p`.`PersonID` = 1

