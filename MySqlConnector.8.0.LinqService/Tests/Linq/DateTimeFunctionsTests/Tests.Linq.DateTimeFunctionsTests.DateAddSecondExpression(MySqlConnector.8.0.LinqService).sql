BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @Value Int32
SET     @Value = 41

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @Value Second))
FROM
	`LinqDataTypes` `t`

