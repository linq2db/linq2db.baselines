BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`MoneyValue`
FROM
	(
		SELECT
			ROUND(`p`.`MoneyValue`, 1) as `c1`,
			`p`.`MoneyValue`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> CAST(0 AS DECIMAL(1)) AND `t`.`c1` <> CAST(7 AS DECIMAL(1))

