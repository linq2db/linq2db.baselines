BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @param Decimal(2, 0)
SET     @param = CAST(33 AS DECIMAL(2))
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = CAST(33 AS DECIMAL(2))

SELECT
	CAST(`v`.`Integer` AS DECIMAL(29, 10)) / @param,
	`v`.`Decimal` / @param_1,
	`v`.`Double` / @param
FROM
	`Issue4469Table` `v`
LIMIT 2

