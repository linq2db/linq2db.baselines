BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

