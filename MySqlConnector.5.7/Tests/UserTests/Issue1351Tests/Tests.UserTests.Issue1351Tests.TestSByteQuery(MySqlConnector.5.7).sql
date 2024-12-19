BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `T1351Model`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `T1351Model`
(
	`ID`           INT     NOT NULL,
	`TestField`    TINYINT NOT NULL,
	`TestNullable` TINYINT     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`TestField`,
	`t1`.`TestNullable`
FROM
	`T1351Model` `t1`
WHERE
	`t1`.`TestField` = 0

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`TestField`,
	`t1`.`TestNullable`
FROM
	`T1351Model` `t1`
WHERE
	`t1`.`TestNullable` <> 1 OR `t1`.`TestNullable` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `T1351Model`

