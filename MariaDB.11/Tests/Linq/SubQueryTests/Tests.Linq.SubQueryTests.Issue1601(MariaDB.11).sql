﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN `t2`.`x` < 0 THEN 9
		ELSE `t2`.`x` + 8
	END,
	`t2`.`x` + `t2`.`x`
FROM
	(
		SELECT
			(
				SELECT
					SUM(`t1`.`MoneyValue`)
				FROM
					`LinqDataTypes` `t1`
			) as `x`
		FROM
			`LinqDataTypes` `q`
	) `t2`

