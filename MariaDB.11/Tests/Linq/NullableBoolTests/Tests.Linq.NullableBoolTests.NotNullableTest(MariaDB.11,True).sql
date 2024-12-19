BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullableBoolClass`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NotNullableBoolClass`
(
	`Value` BOOLEAN NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `NotNullableBoolClass`
(
	`Value`
)
VALUES
(1),
(0)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	NOT `t`.`Value`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Value`
FROM
	`NotNullableBoolClass` `t`
WHERE
	`t`.`Value` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullableBoolClass`

