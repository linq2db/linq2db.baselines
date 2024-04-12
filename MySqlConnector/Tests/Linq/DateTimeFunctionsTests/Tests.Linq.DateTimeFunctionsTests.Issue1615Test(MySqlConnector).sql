BeforeExecute
-- MySqlConnector MySql

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval 5 Day))
FROM
	`LinqDataTypes` `t`

