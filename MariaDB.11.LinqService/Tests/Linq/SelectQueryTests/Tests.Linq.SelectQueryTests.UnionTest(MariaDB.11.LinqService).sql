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

SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval `t`.`Value` Day),
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day)
FROM
	`SampleClass` `t`
WHERE
	`t`.`Value` = 1
UNION
SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval 3 Day),
	Date_Add(CURRENT_TIMESTAMP, Interval 4 Day)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

