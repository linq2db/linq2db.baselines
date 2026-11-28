-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	SUM(CASE
		WHEN `r`.`Year` = 2000 THEN `r`.`Amount`
		ELSE NULL
	END),
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END),
	`r`.`Category`
FROM
	`CategorySales` `r`
GROUP BY
	`r`.`Category`

