﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Floor(-(`p`.`MoneyValue` + 1)) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0

