-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`,
	`p`.`MiddleName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

