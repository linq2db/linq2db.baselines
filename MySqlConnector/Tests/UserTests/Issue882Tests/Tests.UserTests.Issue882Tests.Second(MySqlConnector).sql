BeforeExecute
-- MySqlConnector MySql

SELECT
	Extract(second from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

