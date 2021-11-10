BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(`t`.`MoneyValue` as DECIMAL(29, 10))
FROM
	`LinqDataTypes` `t`
WHERE
	Cast(`t`.`MoneyValue` as DECIMAL(29, 10)) > 0

