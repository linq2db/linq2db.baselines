-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`MoneyValue`
FROM
	`LinqDataTypes` `p`
WHERE
	CAST(Floor(`p`.`MoneyValue`) AS SIGNED) > 0

