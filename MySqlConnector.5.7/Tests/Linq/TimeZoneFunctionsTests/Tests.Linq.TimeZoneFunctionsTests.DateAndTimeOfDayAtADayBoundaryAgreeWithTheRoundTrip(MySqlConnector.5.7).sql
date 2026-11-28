-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	Date(`r`.`Dto`),
	CAST(`r`.`Dto` AS TIME)
FROM
	`ZonedRow` `r`
LIMIT 2

