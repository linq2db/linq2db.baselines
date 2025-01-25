BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = 1

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Day))
FROM
	`LinqDataTypes` `t`

