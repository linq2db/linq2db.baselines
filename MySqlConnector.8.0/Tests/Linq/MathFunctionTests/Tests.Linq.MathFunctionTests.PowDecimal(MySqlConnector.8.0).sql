﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Floor(CAST(Power(`p`.`MoneyValue`, CAST(CAST(3 AS DECIMAL(1)) AS DOUBLE)) AS DECIMAL(29, 10))) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> CAST(0 AS DECIMAL(1))

