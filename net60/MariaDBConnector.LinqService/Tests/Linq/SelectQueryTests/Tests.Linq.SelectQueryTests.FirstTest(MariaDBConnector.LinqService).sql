BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval 1 Day) as `Value1`,
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
LIMIT 1

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

