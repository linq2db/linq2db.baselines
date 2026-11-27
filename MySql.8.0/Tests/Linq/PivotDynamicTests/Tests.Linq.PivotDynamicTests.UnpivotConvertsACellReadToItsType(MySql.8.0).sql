-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`row_1`.`Key_1`,
	CAST(Floor(`row_1`.`Y2000`) AS SIGNED)
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
	) `row_1`
WHERE
	`row_1`.`Y2000` IS NOT NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`row_1`.`Key_1`,
	CAST(Floor(`row_1`.`Y2000`) AS SIGNED)
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
	) `row_1`
WHERE
	`row_1`.`Y2000` IS NOT NULL

