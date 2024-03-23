BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval 2 Month) as Date)
FROM
	`LinqDataTypes` `t`

