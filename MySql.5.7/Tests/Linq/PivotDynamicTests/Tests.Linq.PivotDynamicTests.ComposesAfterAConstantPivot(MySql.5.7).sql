-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r_1`.`Key_1`,
	`r_1`.`Y2010`
FROM
	(
		SELECT
			SUM(CASE
				WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
				ELSE NULL
			END) as `Y2010`,
			`r`.`Category` as `Key_1`
		FROM
			`CategorySales` `r`
		GROUP BY
			`r`.`Category`
		HAVING
			SUM(CASE
				WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
				ELSE NULL
			END) >= 15
	) `r_1`
ORDER BY
	`r_1`.`Y2010` DESC

