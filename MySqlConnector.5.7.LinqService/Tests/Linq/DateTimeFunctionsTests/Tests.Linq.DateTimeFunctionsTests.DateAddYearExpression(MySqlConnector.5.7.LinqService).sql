BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = 11

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Year))
FROM
	`LinqDataTypes` `t`

