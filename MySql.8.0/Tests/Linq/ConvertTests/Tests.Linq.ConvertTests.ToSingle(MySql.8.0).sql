BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p_1`.`MoneyValue`
FROM
	(
		SELECT
			`p`.`MoneyValue`
		FROM
			`LinqDataTypes` `p`
	) `p_1`
WHERE
	`p_1`.`MoneyValue` > 0

