﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`     INT         NOT NULL,
	`Value1` VARCHAR(50)     NULL,
	`Value2` VARCHAR(50)     NULL,
	`Value3` VARCHAR(50)     NULL,
	`Value4` VARCHAR(50)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`Value4`
)
VALUES
(1,'V1','V2',NULL,'V4'),
(2,NULL,'Z2',NULL,NULL),
(3,'Z1',NULL,NULL,'Z4')

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	CONCAT_WS(' -> ', `t`.`Value2`)
FROM
	`SampleClass` `t`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	CONCAT_WS(' -> ', `t`.`Value3`)
FROM
	`SampleClass` `t`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	CONCAT_WS(' -> ', `t`.`Value3`, `t`.`Value1`, `t`.`Value2`)
FROM
	`SampleClass` `t`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	CONCAT_WS(' -> ', `t`.`Value3`, `t`.`Value3`)
FROM
	`SampleClass` `t`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

