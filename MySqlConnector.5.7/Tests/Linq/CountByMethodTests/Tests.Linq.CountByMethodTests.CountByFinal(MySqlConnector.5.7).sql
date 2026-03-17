-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`g_1`.`TestId`,
	COUNT(*)
FROM
	`TestTable` `g_1`
GROUP BY
	`g_1`.`TestId`
ORDER BY
	`g_1`.`TestId`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`TestId`
FROM
	`TestTable` `t1`

