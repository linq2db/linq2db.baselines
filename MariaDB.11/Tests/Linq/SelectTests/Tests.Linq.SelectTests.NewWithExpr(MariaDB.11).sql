-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`PersonID`,
	TRIM(TRAILING '' FROM (CONCAT(`p`.`FirstName`, '1')))
FROM
	`Person` `p`

