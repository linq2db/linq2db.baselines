BeforeExecute
-- MySqlConnector MySql
DECLARE @p Int32
SET     @p = 1

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p Year)
FROM
	`LinqDataTypes` `t`

