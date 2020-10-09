BeforeExecute
-- MySqlConnector MySql

SELECT 
	`t`.`DateTimeValue`
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(day from `t`.`DateTimeValue`) > 0

