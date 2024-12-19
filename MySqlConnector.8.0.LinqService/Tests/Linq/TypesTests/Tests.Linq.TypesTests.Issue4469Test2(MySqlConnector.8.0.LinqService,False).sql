BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4469Table`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4469Table`
(
	`Integer` INT            NOT NULL,
	`Decimal` DECIMAL(10, 5) NOT NULL,
	`Double`  DOUBLE         NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Integer Int32
SET     @Integer = 100
DECLARE @Decimal NewDecimal(3, 0) -- Decimal
SET     @Decimal = 100
DECLARE @Double Double
SET     @Double = 100

INSERT INTO `Issue4469Table`
(
	`Integer`,
	`Decimal`,
	`Double`
)
VALUES
(
	@Integer,
	@Decimal,
	@Double
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @param Int32
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

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4469Table`

