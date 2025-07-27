BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(`v`.`Integer` AS DOUBLE) / CAST(33 AS DOUBLE),
	`v`.`Decimal` / CAST(33 AS DOUBLE),
	`v`.`Double` / CAST(33 AS DOUBLE)
FROM
	`Issue4469Table` `v`
LIMIT 2

