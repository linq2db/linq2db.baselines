﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	TIMESTAMPDIFF(day, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour))
FROM
	`LinqDataTypes` `t`

