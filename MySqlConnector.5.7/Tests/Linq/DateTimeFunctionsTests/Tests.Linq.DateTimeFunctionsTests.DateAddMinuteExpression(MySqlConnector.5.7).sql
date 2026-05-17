-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Int32
SET     @Value = 5

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval @Value Minute))
FROM
	`LinqDataTypes` `t`

