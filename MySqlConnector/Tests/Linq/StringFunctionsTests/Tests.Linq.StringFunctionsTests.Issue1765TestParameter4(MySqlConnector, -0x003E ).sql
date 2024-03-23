BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
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
DECLARE @separator VarChar(4) -- String
SET     @separator = ' -> '

SELECT
	(
		SELECT
			MAX(`t`.`Value4`)
		FROM
			`SampleClass` `t`
		WHERE
			`g_1`.`Id` = `t`.`Id` AND (`g_1`.`Value4` = `t`.`Value4` OR `g_1`.`Value4` IS NULL AND `t`.`Value4` IS NULL)
	),
	GROUP_CONCAT(`g_1`.`Value4` SEPARATOR @separator)
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`,
	`g_1`.`Value4`
ORDER BY
	`g_1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

