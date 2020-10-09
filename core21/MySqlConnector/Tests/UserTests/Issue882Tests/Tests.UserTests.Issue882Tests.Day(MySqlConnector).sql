BeforeExecute
-- MySqlConnector MySql

SELECT 
	Extract(day from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

