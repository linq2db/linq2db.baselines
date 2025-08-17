BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @Value Int32
SET     @Value = 1

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @Value Hour))
FROM
	`LinqDataTypes` `t`

