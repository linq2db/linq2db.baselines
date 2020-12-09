BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `T1351Model`
(
	`ID`           INT     NOT NULL,
	`TestField`    TINYINT NOT NULL,
	`TestNullable` TINYINT     NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`_`.`ID`,
	`_`.`TestField`,
	`_`.`TestNullable`
FROM
	`T1351Model` `_`
WHERE
	`_`.`TestField` = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	`_`.`ID`,
	`_`.`TestField`,
	`_`.`TestNullable`
FROM
	`T1351Model` `_`
WHERE
	(`_`.`TestNullable` <> 1 OR `_`.`TestNullable` IS NULL)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `T1351Model`

