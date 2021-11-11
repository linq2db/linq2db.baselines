BeforeExecute
-- MySqlConnector MySql
DECLARE @p_1 Int32
SET     @p_1 = -1

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Week)
FROM
	`LinqDataTypes` `t`

