BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value Int32
SET     @Value = 5

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval @Value Minute))
FROM
	`LinqDataTypes` `t`

