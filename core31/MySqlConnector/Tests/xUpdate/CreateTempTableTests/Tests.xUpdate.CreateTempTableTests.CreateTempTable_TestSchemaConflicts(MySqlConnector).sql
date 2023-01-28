BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTempTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestTempTable`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `TestTempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	'value'
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `TempTable`
(
	`Id`,
	`Value`
)
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestTempTable` `t1`

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `TestTempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	2,
	'value 2'
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `TempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	2,
	'renamed 2'
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestTempTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TempTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTempTable`

