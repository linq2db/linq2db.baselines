-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`g_1`.`Category`,
	COUNT(DISTINCT CASE
		WHEN `g_1`.`Year` = 2000 THEN `g_1`.`Amount`
		ELSE NULL
	END),
	COUNT(CASE
		WHEN `g_1`.`Year` = 2000 THEN 1
		ELSE NULL
	END)
FROM
	`CategorySales` `g_1`
GROUP BY
	`g_1`.`Category`

