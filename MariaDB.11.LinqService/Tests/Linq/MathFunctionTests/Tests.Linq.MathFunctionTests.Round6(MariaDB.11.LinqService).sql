﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`MoneyValue`
FROM
	`LinqDataTypes` `t`
WHERE
	ROUND(`t`.`MoneyValue`) <> 0

