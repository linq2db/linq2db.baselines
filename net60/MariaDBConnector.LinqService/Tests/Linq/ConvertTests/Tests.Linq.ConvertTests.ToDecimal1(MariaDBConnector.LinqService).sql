﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Cast((`t`.`MoneyValue` * 1000) as Decimal(10))
FROM
	`LinqDataTypes` `t`

