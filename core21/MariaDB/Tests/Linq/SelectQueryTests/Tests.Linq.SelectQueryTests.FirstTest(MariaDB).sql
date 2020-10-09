BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	Date_Add(CURRENT_TIMESTAMP, Interval 1 Day) as `Value1`, 
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `SampleClass`

