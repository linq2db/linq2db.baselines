BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `T1351Model`
(
	`ID`           INT     NOT NULL,
	`TestField`    TINYINT NOT NULL,
	`TestNullable` TINYINT     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`_`.`ID`,
	`_`.`TestField`,
	`_`.`TestNullable`
FROM
	`T1351Model` `_`
WHERE
	`_`.`TestField` = 0

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`_`.`ID`,
	`_`.`TestField`,
	`_`.`TestNullable`
FROM
	`T1351Model` `_`
WHERE
	(`_`.`TestNullable` <> 1 OR `_`.`TestNullable` IS NULL)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `T1351Model`

