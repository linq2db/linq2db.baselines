-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @param Int32
SET     @param = 33

SELECT
	`v`.`Integer` / @param,
	`v`.`Decimal` / @param,
	`v`.`Double` / @param
FROM
	`NumericDivisionTable` `v`
LIMIT 2

