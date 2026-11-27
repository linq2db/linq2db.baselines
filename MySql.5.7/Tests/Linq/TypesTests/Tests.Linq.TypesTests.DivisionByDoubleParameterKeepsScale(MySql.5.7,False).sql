-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @param Double
SET     @param = 33

SELECT
	CAST(`v`.`Integer` AS DECIMAL(29, 10)) / @param,
	`v`.`Decimal` / @param,
	`v`.`Double` / @param
FROM
	`NumericDivisionTable` `v`
LIMIT 2

