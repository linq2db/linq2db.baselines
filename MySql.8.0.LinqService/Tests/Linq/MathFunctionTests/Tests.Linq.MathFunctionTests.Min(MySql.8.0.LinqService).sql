BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` <= CAST(5 AS DECIMAL(1)) THEN `p`.`MoneyValue`
				ELSE CAST(5 AS DECIMAL(1))
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> CAST(0 AS DECIMAL(1))

