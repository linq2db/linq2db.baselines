-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	Extract(hour from `r`.`Dto`)
FROM
	`ZonedRow` `r`
LIMIT 2

