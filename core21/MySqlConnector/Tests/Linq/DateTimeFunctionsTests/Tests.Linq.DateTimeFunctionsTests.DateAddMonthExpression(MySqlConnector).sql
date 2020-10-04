BeforeExecute
-- MySqlConnector MySql
DECLARE @p1 Int32
SET     @p1 = 2

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p1 Month)
FROM
	`LinqDataTypes` `t`

