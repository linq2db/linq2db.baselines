-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`v`.`Integer` DIV 33,
	`v`.`Decimal` / 33,
	`v`.`Double` / 33
FROM
	`Issue4469Table` `v`
LIMIT 2

