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
	Concat('123', CASE
		WHEN CHAR_LENGTH(`p`.`FirstName`) >= 6 THEN `p`.`FirstName`
		ELSE LPAD(`p`.`FirstName`, 6, '*')
	END) = '123**John' AND
	`p`.`PersonID` = 1

