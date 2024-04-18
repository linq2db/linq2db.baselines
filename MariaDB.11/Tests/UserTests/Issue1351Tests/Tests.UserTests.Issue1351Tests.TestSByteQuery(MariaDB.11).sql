BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `T1351Model`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `T1351Model`
(
	`ID`           INT     NOT NULL,
	`TestField`    TINYINT NOT NULL,
	`TestNullable` TINYINT     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`ID`,
	`_`.`TestField`,
	`_`.`TestNullable`
FROM
	`T1351Model` `_`
WHERE
	`_`.`TestField` = 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`ID`,
	`_`.`TestField`,
	`_`.`TestNullable`
FROM
	`T1351Model` `_`
WHERE
	(`_`.`TestNullable` <> 1 OR `_`.`TestNullable` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `T1351Model`

