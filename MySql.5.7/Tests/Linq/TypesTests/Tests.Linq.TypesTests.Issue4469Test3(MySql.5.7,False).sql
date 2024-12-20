BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4469Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue4469Table`
(
	`Integer` INT            NOT NULL,
	`Decimal` DECIMAL(10, 5) NOT NULL,
	`Double`  DOUBLE         NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Issue4469Table`
(
	`Integer`,
	`Decimal`,
	`Double`
)
VALUES
(100,100,100)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @param Int32
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33
DECLARE @param_2 Double
SET     @param_2 = 33

SELECT
	CAST(`v`.`Integer` AS DECIMAL(29, 10)) / @param,
	`v`.`Decimal` / @param_1,
	`v`.`Double` / @param_2
FROM
	`Issue4469Table` `v`
LIMIT 2

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4469Table`

