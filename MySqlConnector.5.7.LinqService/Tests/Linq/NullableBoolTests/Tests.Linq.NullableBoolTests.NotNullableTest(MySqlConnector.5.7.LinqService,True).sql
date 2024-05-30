BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `NotNullableBoolClass`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `NotNullableBoolClass`
(
	`Value` BOOLEAN NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Bool -- Boolean
SET     @Value = 1

INSERT INTO `NotNullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Bool -- Boolean
SET     @Value = 0

INSERT INTO `NotNullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `NotNullableBoolClass`

