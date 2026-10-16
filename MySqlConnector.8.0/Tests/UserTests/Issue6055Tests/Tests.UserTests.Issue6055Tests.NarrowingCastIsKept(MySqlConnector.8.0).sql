-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(`r`.`A` + `r`.`B` AS DECIMAL(29, 10))
FROM
	`DecimalTable` `r`
LIMIT 2

