﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Degrees(CAST(Floor(`p`.`MoneyValue`) AS SIGNED)) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	CAST(`t`.`Value_1` AS DOUBLE) <> CAST(0.10000000000000001 AS DOUBLE)

