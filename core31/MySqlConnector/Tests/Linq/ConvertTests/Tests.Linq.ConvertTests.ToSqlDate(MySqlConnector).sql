BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-01-01') as Date)
FROM
	`LinqDataTypes` `t`

