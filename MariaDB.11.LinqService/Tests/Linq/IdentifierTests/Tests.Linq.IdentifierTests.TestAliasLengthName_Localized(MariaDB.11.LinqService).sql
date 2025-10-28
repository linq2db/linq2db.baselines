BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`z`.`FirstName`,
	`z`.`PersonID`,
	`z`.`LastName`,
	`z`.`MiddleName`,
	`z`.`Gender`
FROM
	`Person` `z`
WHERE
	`z`.`PersonID` = 1

