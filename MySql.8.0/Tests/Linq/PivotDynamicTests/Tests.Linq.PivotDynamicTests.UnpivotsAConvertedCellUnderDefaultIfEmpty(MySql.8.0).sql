-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(Floor(`t1`.`Y2000`) AS SIGNED)
FROM
	(
		SELECT DISTINCT
			`x`.`Category`
		FROM
			`CategorySales` `x`
	) `c_1`
		LEFT JOIN (
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
		) `t1` ON (`t1`.`Key_1` = `c_1`.`Category` OR `t1`.`Key_1` IS NULL AND `c_1`.`Category` IS NULL) AND `t1`.`Y2000` IS NOT NULL AND CAST(Floor(`t1`.`Y2000`) AS SIGNED) > 100

