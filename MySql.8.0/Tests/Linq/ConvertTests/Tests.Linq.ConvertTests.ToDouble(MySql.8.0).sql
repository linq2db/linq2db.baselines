BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`MoneyValue`
FROM
	`LinqDataTypes` `p`
WHERE
	CAST(Floor(`p`.`MoneyValue`) AS SIGNED) > 0

