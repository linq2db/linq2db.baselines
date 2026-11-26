-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Category`
FROM
	`CategorySales` `r`
GROUP BY
	`r`.`Category`
HAVING
	SUM(CASE
		WHEN `r`.`Year` = 2000 THEN `r`.`Amount`
		ELSE NULL
	END) > 12

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Category`
FROM
	`CategorySales` `r`
GROUP BY
	`r`.`Category`
HAVING
	SUM(CASE
		WHEN `r`.`Year` = 2010 THEN `r`.`Amount`
		ELSE NULL
	END) > 12

