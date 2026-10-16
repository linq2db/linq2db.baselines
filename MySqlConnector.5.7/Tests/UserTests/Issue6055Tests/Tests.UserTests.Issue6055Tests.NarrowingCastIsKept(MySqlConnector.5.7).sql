-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(`r`.`A` + `r`.`B` AS DECIMAL(29, 10))
FROM
	`DecimalTable` `r`
LIMIT 2

