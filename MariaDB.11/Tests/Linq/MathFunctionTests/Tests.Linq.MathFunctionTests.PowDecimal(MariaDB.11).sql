﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Floor(CAST(Power(`p`.`MoneyValue`, CAST(3 AS DOUBLE)) AS DECIMAL(29, 10))) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0

