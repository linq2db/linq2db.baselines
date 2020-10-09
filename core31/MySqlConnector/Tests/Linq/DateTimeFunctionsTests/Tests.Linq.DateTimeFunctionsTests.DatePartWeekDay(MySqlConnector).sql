BeforeExecute
-- MySqlConnector MySql

SELECT 
	WeekDay(Date_Add(`t`.`DateTimeValue`, interval 1 day)) + 1
FROM
	`LinqDataTypes` `t`

