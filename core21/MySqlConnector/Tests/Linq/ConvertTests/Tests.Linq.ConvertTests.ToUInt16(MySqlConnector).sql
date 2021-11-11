BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(Floor(`t`.`MoneyValue`) as UNSIGNED)
FROM
	`LinqDataTypes` `t`
WHERE
	Cast(Floor(`t`.`MoneyValue`) as UNSIGNED) > 0

