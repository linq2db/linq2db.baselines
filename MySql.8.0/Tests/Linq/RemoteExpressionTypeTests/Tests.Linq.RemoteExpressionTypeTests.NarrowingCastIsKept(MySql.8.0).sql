-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(`r`.`A` + `r`.`B` AS DECIMAL(29, 10))
FROM
	`DecimalTable` `r`
LIMIT 2

