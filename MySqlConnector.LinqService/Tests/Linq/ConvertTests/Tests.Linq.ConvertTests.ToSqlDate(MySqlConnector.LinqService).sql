﻿BeforeExecute
-- MySqlConnector MySql

SELECT
	CAST(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01') AS DATE)
FROM
	`LinqDataTypes` `t`

