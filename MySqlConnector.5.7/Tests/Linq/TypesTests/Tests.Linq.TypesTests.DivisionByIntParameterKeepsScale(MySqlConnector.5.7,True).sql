-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`v`.`Integer` / 33,
	`v`.`Decimal` / 33,
	`v`.`Double` / 33
FROM
	`NumericDivisionTable` `v`
LIMIT 2

