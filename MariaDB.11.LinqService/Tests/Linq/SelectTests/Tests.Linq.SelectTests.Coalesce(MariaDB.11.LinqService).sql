BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	Coalesce(`p`.`FirstName`, 'None'),
	Coalesce(`p`.`MiddleName`, 'None')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

