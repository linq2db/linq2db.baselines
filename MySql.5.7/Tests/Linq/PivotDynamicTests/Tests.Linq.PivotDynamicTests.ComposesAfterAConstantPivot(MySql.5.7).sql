-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Category`,
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END)
FROM
	`CategorySales` `r`
GROUP BY
	`r`.`Category`
HAVING
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END) >= 15

