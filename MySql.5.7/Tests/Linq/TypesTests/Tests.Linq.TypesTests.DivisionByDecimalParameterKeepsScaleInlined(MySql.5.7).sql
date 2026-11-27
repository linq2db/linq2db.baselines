-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(`v`.`Integer` AS DECIMAL(29, 10)) / 33,
	`v`.`Decimal` / 33,
	`v`.`Double` / 33
FROM
	`NumericDivisionTable` `v`
LIMIT 2

