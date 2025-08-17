BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Concat(Left(`p`.`FirstName`, 1), RIGHT(`p`.`FirstName`, CHAR_LENGTH(`p`.`FirstName`) - 3)) = 'Jn' AND
	`p`.`PersonID` = 1

