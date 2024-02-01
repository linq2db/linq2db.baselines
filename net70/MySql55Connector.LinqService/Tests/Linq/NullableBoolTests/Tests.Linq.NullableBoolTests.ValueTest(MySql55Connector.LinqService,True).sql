BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `NullableBoolClass`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NullableBoolClass`
(
	`Value` BOOLEAN     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Value Bool -- Boolean
SET     @Value = NULL

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Value Bool -- Boolean
SET     @Value = 1

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Value Bool -- Boolean
SET     @Value = 0

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	(`t`.`Value` <> @value OR `t`.`Value` IS NULL)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `NullableBoolClass`

