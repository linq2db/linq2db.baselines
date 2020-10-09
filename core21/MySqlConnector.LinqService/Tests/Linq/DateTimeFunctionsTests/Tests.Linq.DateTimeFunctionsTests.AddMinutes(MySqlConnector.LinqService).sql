BeforeExecute
-- MySqlConnector MySql

SELECT 
	Date_Add(`t`.`DateTimeValue`, Interval -8 Minute)
FROM
	`LinqDataTypes` `t`

