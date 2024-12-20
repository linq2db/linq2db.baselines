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

SELECT
	`v`.`Integer` / 33,
	`v`.`Decimal` / 33,
	`v`.`Double` / 33
FROM
	`Issue4469Table` `v`
LIMIT 2

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4469Table`

