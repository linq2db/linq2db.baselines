BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @Date Int32
SET     @Date = 1

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Date Year))
FROM
	`LinqDataTypes` `t`

