BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `SampleClass`
(
	`Id`     INT         NOT NULL,
	`Value1` VARCHAR(50)     NULL,
	`Value2` VARCHAR(50)     NULL,
	`Value3` VARCHAR(50)     NULL,
	`Value4` VARCHAR(50)     NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

SELECT
	GROUP_CONCAT(`t`.`Value1` ORDER BY `t`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `t`

BeforeExecute
-- MySqlConnector MySql

SELECT
	GROUP_CONCAT(`t`.`Value1` ORDER BY `t`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `t`

BeforeExecute
-- MySqlConnector MySql

SELECT
	GROUP_CONCAT(`t`.`Value1` ORDER BY `t`.`Value1` DESC SEPARATOR ' -> ')
FROM
	`SampleClass` `t`

BeforeExecute
-- MySqlConnector MySql

SELECT
	GROUP_CONCAT(`t`.`Value1` ORDER BY `t`.`Value1` DESC SEPARATOR ' -> ')
FROM
	`SampleClass` `t`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `SampleClass`

