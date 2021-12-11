﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(1,100)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval `t`.`Value` Day),
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day)
FROM
	`SampleClass` `t`
WHERE
	`t`.`Value` = 1
UNION
SELECT
	`t1`.`Value1`,
	`t1`.`Value2`
FROM
	(
		SELECT
			Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`,
			Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
	) `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`SampleClass` `t`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

