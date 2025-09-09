BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @Value Int32
SET     @Value = 1

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @Value Hour))
FROM
	`LinqDataTypes` `t`

