-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`PersonID`,
	REGEXP_REPLACE(Concat(`p`.`FirstName`, '1'), '(?-i)[]+$', '')
FROM
	`Person` `p`

