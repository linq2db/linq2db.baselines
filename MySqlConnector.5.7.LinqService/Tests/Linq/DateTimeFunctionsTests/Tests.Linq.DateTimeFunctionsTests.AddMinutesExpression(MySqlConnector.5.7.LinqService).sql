BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @Minute Int32
SET     @Minute = -8

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval @Minute Minute))
FROM
	`LinqDataTypes` `t`

