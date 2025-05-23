﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			CAST(Floor(CASE
				WHEN `t`.`MoneyValue` - FLOOR(`t`.`MoneyValue`) = 0.5 AND (FLOOR(`t`.`MoneyValue`) % 2) = 0
					THEN FLOOR(`t`.`MoneyValue`)
				ELSE ROUND(`t`.`MoneyValue`, 0)
			END) AS UNSIGNED) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`c1` > 0

