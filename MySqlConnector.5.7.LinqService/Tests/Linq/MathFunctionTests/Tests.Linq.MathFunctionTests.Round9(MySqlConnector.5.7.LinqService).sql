BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`t`.`MoneyValue`
FROM
	`LinqDataTypes` `t`
WHERE
	ROUND(`t`.`MoneyValue`, 1) <> 0

