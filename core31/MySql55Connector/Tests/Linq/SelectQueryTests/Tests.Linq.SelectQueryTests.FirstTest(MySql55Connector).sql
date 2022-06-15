BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval 1 Day) as `Value1`,
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
LIMIT 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

