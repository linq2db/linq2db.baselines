BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @Value Int32
SET     @Value = 11

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Year))
FROM
	`LinqDataTypes` `t`

