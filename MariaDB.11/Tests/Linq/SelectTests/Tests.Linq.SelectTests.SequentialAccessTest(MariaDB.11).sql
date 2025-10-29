-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`PersonID`,
	`p`.`LastName`,
	Concat(`p`.`FirstName`, ' ', `p`.`LastName`)
FROM
	`Person` `p`

