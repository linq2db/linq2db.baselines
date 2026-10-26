-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` - FLOOR(`p`.`MoneyValue`) = 0.5 THEN ROUND(`p`.`MoneyValue` * 0.5, 0) * 2
				ELSE ROUND(`p`.`MoneyValue`, 0)
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

