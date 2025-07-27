BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`MoneyValue`
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` * 2 = ROUND(`p`.`MoneyValue` * 2, 1) AND `p`.`MoneyValue` <> ROUND(`p`.`MoneyValue`, 1)
					THEN ROUND(`p`.`MoneyValue` / 2, 1) * 2
				ELSE ROUND(`p`.`MoneyValue`, 1)
			END as `c1`,
			`p`.`MoneyValue`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> CAST(0 AS DECIMAL(1)) AND `t`.`c1` <> CAST(7 AS DECIMAL(1))

