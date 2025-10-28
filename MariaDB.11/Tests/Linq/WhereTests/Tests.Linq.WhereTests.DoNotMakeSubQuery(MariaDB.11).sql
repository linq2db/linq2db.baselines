BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p2`.`PersonID`,
	TRIM(TRAILING '' FROM Concat(`p2`.`FirstName`, ''))
FROM
	`Person` `p2`
WHERE
	`p2`.`PersonID` = 1

