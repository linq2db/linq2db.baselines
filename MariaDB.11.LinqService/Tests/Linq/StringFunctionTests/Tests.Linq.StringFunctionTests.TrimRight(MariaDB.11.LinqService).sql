BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`pp`.`PersonID`,
	Concat('  ', `pp`.`FirstName`, ' ')
FROM
	`Person` `pp`
WHERE
	`pp`.`PersonID` = 1 AND (TRIM(TRAILING FROM Concat('  ', `pp`.`FirstName`, ' '))) = '  John'

