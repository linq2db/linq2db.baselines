﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Floor(Log(2, `p`.`MoneyValue`)) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0.10000000000000001

