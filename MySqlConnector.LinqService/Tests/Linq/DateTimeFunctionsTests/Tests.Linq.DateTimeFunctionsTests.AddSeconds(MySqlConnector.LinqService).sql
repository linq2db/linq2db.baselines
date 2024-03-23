BeforeExecute
-- MySqlConnector MySql

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval -35 Second))
FROM
	`LinqDataTypes` `t`

