﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Floor(Tan(`t`.`MoneyValue` / 15) * 15) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0.10000000000000001

