﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval 1 Day)
FROM
	`LinqDataTypes` `t`

