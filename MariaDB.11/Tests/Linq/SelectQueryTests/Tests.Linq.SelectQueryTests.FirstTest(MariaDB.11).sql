BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval 1 Day) as `Value1`,
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

