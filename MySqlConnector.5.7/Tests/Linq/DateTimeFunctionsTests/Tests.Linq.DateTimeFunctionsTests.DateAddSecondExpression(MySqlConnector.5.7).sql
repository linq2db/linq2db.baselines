-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Int32
SET     @Value = 41

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @Value Second))
FROM
	`LinqDataTypes` `t`

