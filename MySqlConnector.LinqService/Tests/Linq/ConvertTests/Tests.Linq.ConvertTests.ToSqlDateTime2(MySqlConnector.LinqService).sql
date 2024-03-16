BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01 00:20:00') as DateTime)
FROM
	`LinqDataTypes` `t`

