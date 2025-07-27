BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`MoneyValue`
FROM
	(
		SELECT
			`t`.`MoneyValue`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`MoneyValue` > CAST(0 AS DOUBLE)

