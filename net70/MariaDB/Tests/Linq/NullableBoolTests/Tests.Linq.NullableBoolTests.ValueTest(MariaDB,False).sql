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

INSERT INTO `NullableBoolClass`
(
	`Value`
)
VALUES
(NULL),
(1),
(0)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` = @value

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	(`t`.`Value` <> @value OR `t`.`Value` IS NULL)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @value Bool -- Boolean
SET     @value = 0

SELECT
	`t`.`Value`
FROM
	`NullableBoolClass` `t`
WHERE
	`t`.`Value` <> @value

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `NullableBoolClass`

