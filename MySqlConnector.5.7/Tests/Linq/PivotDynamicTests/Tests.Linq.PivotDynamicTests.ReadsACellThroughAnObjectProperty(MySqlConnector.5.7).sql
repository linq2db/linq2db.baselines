-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Category`,
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Category`,
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Category`,
	CAST(Floor(SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)) AS SIGNED)
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`

