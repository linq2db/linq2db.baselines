BeforeExecute
-- MySqlConnector MySql
DECLARE @p1 Int32
SET     @p1 = 3

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p1 Day)
FROM
	`LinqDataTypes` `t`

