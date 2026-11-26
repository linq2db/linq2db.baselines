-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`g_1`.`Category`,
	COUNT(CASE
		WHEN `g_1`.`Year` = 2000 THEN 1
		ELSE NULL
	END),
	COUNT(CASE
		WHEN `g_1`.`Year` = 2010 THEN 1
		ELSE NULL
	END)
FROM
	`StrictSales` `g_1`
GROUP BY
	`g_1`.`Category`

