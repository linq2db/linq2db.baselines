BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`     INT         NOT NULL,
	`Value1` VARCHAR(50)     NULL,
	`Value2` VARCHAR(50)     NULL,
	`Value3` VARCHAR(50)     NULL,
	`Value4` VARCHAR(50)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	GROUP_CONCAT(`t`.`Value4` SEPARATOR ' -> ')
FROM
	`SampleClass` `t`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SampleClass`

