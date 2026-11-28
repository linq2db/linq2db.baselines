-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`g_2`.`Key_1`,
	`g_2`.`Y2000` - `g_2`.`Y2000_1`,
	`g_2`.`Y2000` - `g_2`.`Y2010`
FROM
	(
		SELECT
			`g_1`.`Category` as `Key_1`,
			SUM(`g_1`.`Amount`) as `Y2000`,
			SUM(CASE
				WHEN `g_1`.`Year` = 2000 THEN `g_1`.`Amount`
				ELSE NULL
			END) as `Y2000_1`,
			SUM(CASE
				WHEN `g_1`.`Year` = 2010 THEN `g_1`.`Amount`
				ELSE NULL
			END) as `Y2010`
		FROM
			`CategorySales` `g_1`
		GROUP BY
			`g_1`.`Category`
	) `g_2`

