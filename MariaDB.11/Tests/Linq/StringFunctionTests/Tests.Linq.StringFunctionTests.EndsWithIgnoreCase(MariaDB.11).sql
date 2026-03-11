-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE '%JOHN' ESCAPE '~' AND `p`.`PersonID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` NOT LIKE '%JOHN' ESCAPE '~' AND `p`.`PersonID` = 1

