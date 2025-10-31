BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` - FLOOR(`p`.`MoneyValue`) = 0.5 AND (FLOOR(`p`.`MoneyValue`) % 2) = 0
					THEN FLOOR(`p`.`MoneyValue`)
				ELSE ROUND(`p`.`MoneyValue`, 0)
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

