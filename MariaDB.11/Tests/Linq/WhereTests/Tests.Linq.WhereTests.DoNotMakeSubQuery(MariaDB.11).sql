-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p2`.`PersonID`,
	REGEXP_REPLACE((CONCAT(`p2`.`FirstName`, '')), '(?-i)[]+$', '')
FROM
	`Person` `p2`
WHERE
	`p2`.`PersonID` = 1

