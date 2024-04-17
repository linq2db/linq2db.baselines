BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NullableBoolClass`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NullableBoolClass`
(
	`Value` BOOLEAN     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	(`t`.`Value` <> @value OR `t`.`Value` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 1

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NullableBoolClass`

