BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			`t`.`MoneyValue` <> CAST(4.5 AS DECIMAL(2, 1)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	NOT `p`.`c1`

