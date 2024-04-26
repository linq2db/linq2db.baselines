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
	`t1`.`ID`,
	`t1`.`TestField`,
	`t1`.`TestNullable`
FROM
	`T1351Model` `t1`
WHERE
	`t1`.`TestField` = 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ID`,
	`t1`.`TestField`,
	`t1`.`TestNullable`
FROM
	`T1351Model` `t1`
WHERE
	(`t1`.`TestNullable` <> 1 OR `t1`.`TestNullable` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `T1351Model`

