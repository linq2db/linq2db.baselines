-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @param Double
SET     @param = 33

SELECT
	CAST(`v`.`Integer` AS DOUBLE) / @param,
	`v`.`Decimal` / @param,
	`v`.`Double` / @param
FROM
	`NumericDivisionTable` `v`
LIMIT 2

