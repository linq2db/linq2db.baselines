BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @Date Int32
SET     @Date = 1

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Date Year))
FROM
	`LinqDataTypes` `t`

