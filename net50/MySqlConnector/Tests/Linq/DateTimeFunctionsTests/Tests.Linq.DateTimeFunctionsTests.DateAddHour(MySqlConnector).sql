BeforeExecute
-- MySqlConnector MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval 1 Hour)
FROM
	`LinqDataTypes` `t`

