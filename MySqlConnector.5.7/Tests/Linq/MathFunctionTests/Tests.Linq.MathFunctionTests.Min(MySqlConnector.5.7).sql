﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` <= 5 THEN `p`.`MoneyValue`
				ELSE 5
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

