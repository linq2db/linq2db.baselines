BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Cast(Floor(`t`.`MoneyValue`) as UNSIGNED)
FROM
	`LinqDataTypes` `t`
WHERE
	Cast(Floor(`t`.`MoneyValue`) as UNSIGNED) > 0

