BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	Date_Add(CURRENT_TIMESTAMP, Interval 1 Day) as `Value1`, 
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `SampleClass`

