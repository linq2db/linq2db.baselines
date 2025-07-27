BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CAST(`v`.`Integer` AS DECIMAL(29, 10)) / CAST(33 AS DECIMAL(2)),
	`v`.`Decimal` / CAST(33 AS DECIMAL(2)),
	`v`.`Double` / CAST(33 AS DECIMAL(2))
FROM
	`Issue4469Table` `v`
LIMIT 2

