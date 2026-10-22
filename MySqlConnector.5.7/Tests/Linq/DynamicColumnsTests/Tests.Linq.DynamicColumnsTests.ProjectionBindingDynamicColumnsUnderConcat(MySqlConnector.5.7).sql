-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`g_1`.`FirstName`,
	COUNT(*)
FROM
	`Person` `g_1`
GROUP BY
	`g_1`.`FirstName`
UNION ALL
SELECT
	`g_2`.`FirstName`,
	COUNT(*)
FROM
	`Person` `g_2`
GROUP BY
	`g_2`.`FirstName`

