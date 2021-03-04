BeforeExecute
-- MySqlConnector MySql
DECLARE @p_1 Double
SET     @p_1 = 1

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Hour)
FROM
	`LinqDataTypes` `t`

