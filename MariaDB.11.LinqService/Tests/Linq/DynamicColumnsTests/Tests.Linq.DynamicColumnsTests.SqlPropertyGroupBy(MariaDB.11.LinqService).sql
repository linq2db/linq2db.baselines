BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`FirstName`,
	COUNT(*)
FROM
	`Person` `p`
GROUP BY
	`p`.`FirstName`

