-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`PersonID`,
	`p`.`LastName`,
	CONCAT(`p`.`FirstName`, ' ', `p`.`LastName`)
FROM
	`Person` `p`

