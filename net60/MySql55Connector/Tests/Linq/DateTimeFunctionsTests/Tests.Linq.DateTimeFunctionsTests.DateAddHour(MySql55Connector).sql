BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval 1 Hour))
FROM
	`LinqDataTypes` `t`

