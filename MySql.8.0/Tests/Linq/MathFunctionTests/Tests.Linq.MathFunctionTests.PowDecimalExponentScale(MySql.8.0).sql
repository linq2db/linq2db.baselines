-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(Power(`r`.`D`, CAST(0.00005 AS DOUBLE)) AS DECIMAL(18, 4)) + `r`.`D`
FROM
	`PowScale` `r`
LIMIT 2

