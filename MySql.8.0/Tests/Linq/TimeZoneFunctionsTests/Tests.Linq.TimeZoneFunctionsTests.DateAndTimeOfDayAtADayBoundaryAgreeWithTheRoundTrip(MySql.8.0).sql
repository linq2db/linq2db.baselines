-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	Date(`r`.`Dto`),
	CAST(`r`.`Dto` AS TIME)
FROM
	`ZonedRow` `r`
LIMIT 2

