﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval 3 Day)
FROM
	`LinqDataTypes` `t`

