BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `NullableBoolClass`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NullableBoolClass`
(
	`Value` BOOLEAN     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` IS NULL

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` IS NULL

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` IS NOT NULL

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` IS NOT NULL

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `NullableBoolClass`

