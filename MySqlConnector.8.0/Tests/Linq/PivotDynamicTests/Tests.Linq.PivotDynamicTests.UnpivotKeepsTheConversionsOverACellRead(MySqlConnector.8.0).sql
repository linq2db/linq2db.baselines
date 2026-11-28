-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`u`.`Key_1`
FROM
	(
		SELECT
			SUM(CASE
				WHEN `g_1`.`Year` = 2000 THEN `g_1`.`Amount`
				ELSE NULL
			END) as `Y2000`,
			`g_1`.`Category` as `Key_1`
		FROM
			`CategorySales` `g_1`
		GROUP BY
			`g_1`.`Category`
	) `u`
WHERE
	`u`.`Y2000` IS NOT NULL AND CAST(Floor(`u`.`Y2000`) AS SIGNED) = 10

