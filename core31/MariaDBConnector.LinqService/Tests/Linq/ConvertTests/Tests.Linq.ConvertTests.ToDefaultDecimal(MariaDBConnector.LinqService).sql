﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Cast((`t`.`MoneyValue` * 1000) as Decimal)
FROM
	`LinqDataTypes` `t`

