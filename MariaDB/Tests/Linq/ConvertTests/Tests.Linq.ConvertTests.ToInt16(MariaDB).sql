﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Cast(Floor(`t`.`MoneyValue`) as SIGNED)
FROM
	`LinqDataTypes` `t`
WHERE
	Cast(Floor(`t`.`MoneyValue`) as SIGNED) > 0

