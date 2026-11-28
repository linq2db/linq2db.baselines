-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t`.`c1`
FROM
	(
		SELECT
			sign(`p`.`MoneyValue`) * CASE
				WHEN abs(`p`.`MoneyValue`) - floor(abs(`p`.`MoneyValue`)) = 0.5
					THEN floor(abs(`p`.`MoneyValue`)) + 1
				ELSE round(abs(`p`.`MoneyValue`), 0)
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

