BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @param Double
SET     @param = 33
DECLARE @param_1 Double
SET     @param_1 = 33

SELECT
	CAST(`v`.`Integer` AS DOUBLE) / @param,
	`v`.`Decimal` / @param_1,
	`v`.`Double` / @param
FROM
	`Issue4469Table` `v`
LIMIT 2

