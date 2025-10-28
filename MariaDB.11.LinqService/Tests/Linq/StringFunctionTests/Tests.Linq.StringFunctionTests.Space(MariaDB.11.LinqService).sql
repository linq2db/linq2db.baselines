BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Concat(`p`.`FirstName`, Space(`p`.`PersonID` + 1), '123') = 'John  123' AND
	`p`.`PersonID` = 1

