BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
	`p`.`MoneyValue` > 0

