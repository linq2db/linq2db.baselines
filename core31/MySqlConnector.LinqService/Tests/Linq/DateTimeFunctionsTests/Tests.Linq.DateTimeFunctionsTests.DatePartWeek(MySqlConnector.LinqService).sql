BeforeExecute
-- MySqlConnector MySql

SELECT 
	Extract(week from `t`.`DateTimeValue`)
FROM
	`LinqDataTypes` `t`

