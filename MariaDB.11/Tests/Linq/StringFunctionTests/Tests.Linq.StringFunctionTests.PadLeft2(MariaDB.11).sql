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
	Concat('123', CASE
		WHEN LENGTH(`p`.`FirstName`) < 6 THEN LPAD(`p`.`FirstName`, 6, '*')
		ELSE `p`.`FirstName`
	END) = '123**John' AND
	`p`.`PersonID` = 1

