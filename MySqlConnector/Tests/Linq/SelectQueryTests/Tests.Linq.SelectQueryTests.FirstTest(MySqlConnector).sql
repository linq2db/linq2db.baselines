BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval 1 Day) as `Value1`,
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

