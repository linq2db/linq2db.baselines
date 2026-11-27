-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Category`
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`
HAVING
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END) > 16

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Category`
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`
HAVING
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END) > 16

