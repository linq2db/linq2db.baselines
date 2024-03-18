BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval -1 Week) as Date)
FROM
	`LinqDataTypes` `t`

