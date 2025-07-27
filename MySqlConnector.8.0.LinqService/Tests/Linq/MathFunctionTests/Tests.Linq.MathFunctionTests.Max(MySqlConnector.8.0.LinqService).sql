BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` >= CAST(5.1 AS DECIMAL(2, 1)) THEN `p`.`MoneyValue`
				ELSE CAST(5.1 AS DECIMAL(2, 1))
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> CAST(0 AS DECIMAL(1))

