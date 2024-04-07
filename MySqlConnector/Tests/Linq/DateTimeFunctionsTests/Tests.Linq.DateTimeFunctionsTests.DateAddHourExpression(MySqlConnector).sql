BeforeExecute
-- MySqlConnector MySql
DECLARE @p Int32
SET     @p = 1

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @p Hour))
FROM
	`LinqDataTypes` `t`

