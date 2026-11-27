-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(Floor(SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)) AS SIGNED)
FROM
	`Sales` `r`
GROUP BY
	`r`.`Category`

