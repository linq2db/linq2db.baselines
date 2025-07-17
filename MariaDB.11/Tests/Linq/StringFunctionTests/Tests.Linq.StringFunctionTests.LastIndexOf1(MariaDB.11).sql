BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CHAR_LENGTH(`p`.`LastName`) - Locate('p', Reverse(`p`.`LastName`)) = 2 AND
	Locate('p', `p`.`LastName`) <> 0 AND `p`.`PersonID` = 1

