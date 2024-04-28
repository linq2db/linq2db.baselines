BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

