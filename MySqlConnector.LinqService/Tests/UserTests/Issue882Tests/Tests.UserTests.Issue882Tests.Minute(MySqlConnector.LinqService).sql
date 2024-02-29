BeforeExecute
-- MySqlConnector MySql

SELECT
	Extract(minute from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

