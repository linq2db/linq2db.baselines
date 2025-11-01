-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

