-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('o%h', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('o%h', `p`.`FirstName`) <= 0 AND `p`.`PersonID` = 1

