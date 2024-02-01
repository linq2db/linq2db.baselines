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

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(NULL),
(1),
(0)

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

