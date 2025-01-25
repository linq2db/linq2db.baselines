BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = -2

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Month))
FROM
	`LinqDataTypes` `t`

