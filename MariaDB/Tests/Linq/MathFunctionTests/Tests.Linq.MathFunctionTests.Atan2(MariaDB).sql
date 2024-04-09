﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Floor(Atan2(`t`.`MoneyValue` / 15, 0) * 15) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0.10000000000000001

