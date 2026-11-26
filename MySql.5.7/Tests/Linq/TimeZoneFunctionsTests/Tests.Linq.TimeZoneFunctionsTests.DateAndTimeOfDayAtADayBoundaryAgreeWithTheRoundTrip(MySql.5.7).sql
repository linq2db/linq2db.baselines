-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Date(`r`.`Dto`),
	CAST(`r`.`Dto` AS TIME)
FROM
	`ZonedRow` `r`
LIMIT 2

