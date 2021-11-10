BeforeExecute
-- MySqlConnector MySql
DECLARE @p_1 Int32
SET     @p_1 = 3

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Day)
FROM
	`LinqDataTypes` `t`

