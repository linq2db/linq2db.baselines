BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`     INT         NOT NULL,
	`Value1` VARCHAR(50)     NULL,
	`Value2` VARCHAR(50)     NULL,
	`Value3` VARCHAR(50)     NULL,
	`Value4` VARCHAR(50)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	GROUP_CONCAT(`t1`.`Value4` SEPARATOR ' -> ')
FROM
	`SampleClass` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SampleClass`

