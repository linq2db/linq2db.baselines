BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('jOh', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('jOh', `p`.`FirstName`) <= 0 AND `p`.`PersonID` = 1

