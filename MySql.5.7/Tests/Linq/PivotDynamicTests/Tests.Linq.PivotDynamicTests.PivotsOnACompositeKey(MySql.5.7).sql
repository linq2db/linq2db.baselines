-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`g_1`.`Category`,
	`g_1`.`Region`,
	SUM(CASE
		WHEN `g_1`.`Year` = 2000 THEN `g_1`.`Amount`
		ELSE NULL
	END),
	SUM(CASE
		WHEN `g_1`.`Year` = 2010 THEN `g_1`.`Amount`
		ELSE NULL
	END)
FROM
	`RegionSales` `g_1`
GROUP BY
	`g_1`.`Category`,
	`g_1`.`Region`

