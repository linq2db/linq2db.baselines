BeforeExecute
-- MySqlConnector MySql

SELECT 
	Date_Add(`t`.`DateTimeValue`, Interval -35 Second)
FROM
	`LinqDataTypes` `t`

