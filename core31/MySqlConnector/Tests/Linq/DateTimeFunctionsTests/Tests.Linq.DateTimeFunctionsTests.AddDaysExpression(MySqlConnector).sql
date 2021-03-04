BeforeExecute
-- MySqlConnector MySql
DECLARE @p_1 Double
SET     @p_1 = 5

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Day)
FROM
	`LinqDataTypes` `t`

