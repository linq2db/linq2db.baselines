﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Month)
FROM
	`LinqDataTypes` `t`

