﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Sign(`p`.`MoneyValue`)
FROM
	`LinqDataTypes` `p`
WHERE
	Sign(`p`.`MoneyValue`) <> 0

