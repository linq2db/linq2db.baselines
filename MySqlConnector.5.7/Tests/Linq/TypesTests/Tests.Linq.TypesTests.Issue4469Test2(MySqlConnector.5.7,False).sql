BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @param NewDecimal(2, 0) -- Decimal
SET     @param = 33
DECLARE @param_1 NewDecimal(2, 0) -- Decimal
SET     @param_1 = 33
DECLARE @param_2 NewDecimal(2, 0) -- Decimal
SET     @param_2 = 33

SELECT
	CAST(`v`.`Integer` AS DECIMAL(29, 10)) / @param,
	`v`.`Decimal` / @param_1,
	`v`.`Double` / @param_2
FROM
	`Issue4469Table` `v`
LIMIT 2

