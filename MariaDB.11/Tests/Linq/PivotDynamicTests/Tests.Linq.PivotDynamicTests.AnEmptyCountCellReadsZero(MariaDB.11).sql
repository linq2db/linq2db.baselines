-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

