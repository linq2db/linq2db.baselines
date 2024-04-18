﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` * 2 = Round(`p`.`MoneyValue` * 2, 1) AND `p`.`MoneyValue` <> Round(`p`.`MoneyValue`, 1)
					THEN Round(`p`.`MoneyValue` / 2, 1) * 2
				ELSE Round(`p`.`MoneyValue`, 1)
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

