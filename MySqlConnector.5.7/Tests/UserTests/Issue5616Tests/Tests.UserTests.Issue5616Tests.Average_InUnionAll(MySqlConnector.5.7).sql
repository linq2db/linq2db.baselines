-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CAST(0 AS DECIMAL(29, 10))
FROM
	`Table1` `t1`
UNION ALL
SELECT
	AVG(`g_1`.`Id`)
FROM
	`Table2` `g_1`
GROUP BY
	`g_1`.`Id`

