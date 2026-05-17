-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`g_1`.`FirstName`,
	COUNT(*)
FROM
	`Person` `g_1`
GROUP BY
	`g_1`.`FirstName`
ORDER BY
	`g_1`.`FirstName`

