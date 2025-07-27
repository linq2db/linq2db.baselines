BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @param NewDecimal(2, 0) -- Decimal
SET     @param = CAST(33 AS DECIMAL(2))
DECLARE @param_1 NewDecimal(2, 0) -- Decimal
SET     @param_1 = CAST(33 AS DECIMAL(2))

SELECT
	CAST(`v`.`Integer` AS DECIMAL(29, 10)) / @param,
	`v`.`Decimal` / @param_1,
	`v`.`Double` / @param
FROM
	`Issue4469Table` `v`
LIMIT 2

