﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	DayOfYear(`t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

