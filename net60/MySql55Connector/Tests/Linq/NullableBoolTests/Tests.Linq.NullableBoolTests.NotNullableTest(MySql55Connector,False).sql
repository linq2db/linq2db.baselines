BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullableBoolClass`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NotNullableBoolClass`
(
	`Value` BOOLEAN NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `NotNullableBoolClass`
(
	`Value`
)
VALUES
(1),
(0)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullableBoolClass`

