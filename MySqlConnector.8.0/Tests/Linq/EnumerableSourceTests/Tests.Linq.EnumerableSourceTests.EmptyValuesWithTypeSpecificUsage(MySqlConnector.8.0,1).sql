-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_1`.`Id`,
	SUM(`g_1`.`Id`)
FROM
	(SELECT CAST(NULL AS SIGNED) `Id` WHERE 1 = 0) `g_1`
GROUP BY
	`g_1`.`Id`

