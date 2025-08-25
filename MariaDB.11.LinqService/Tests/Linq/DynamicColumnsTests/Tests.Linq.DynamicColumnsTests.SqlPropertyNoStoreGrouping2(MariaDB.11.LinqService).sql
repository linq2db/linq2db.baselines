BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`g_1`.`FirstName`,
	`g_1`.`LastName`,
	COUNT(*)
FROM
	`Person` `g_1`
GROUP BY
	`g_1`.`FirstName`,
	`g_1`.`LastName`
ORDER BY
	`g_1`.`FirstName`

