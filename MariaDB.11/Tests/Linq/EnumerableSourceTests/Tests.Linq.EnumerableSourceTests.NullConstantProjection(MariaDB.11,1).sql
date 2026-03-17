-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`

