BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`MoneyValue`
FROM
	`LinqDataTypes` `t`
WHERE
	CASE
		WHEN `t`.`MoneyValue` - FLOOR(`t`.`MoneyValue`) = CAST(0.5 AS DOUBLE) AND (FLOOR(`t`.`MoneyValue`) % 2) = 0
			THEN FLOOR(`t`.`MoneyValue`)
		ELSE ROUND(`t`.`MoneyValue`, 0)
	END <> CAST(0 AS DOUBLE)

