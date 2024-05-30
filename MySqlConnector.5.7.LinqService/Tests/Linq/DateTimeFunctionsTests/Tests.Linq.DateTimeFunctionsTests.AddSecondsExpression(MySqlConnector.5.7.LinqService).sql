BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = -35

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @p Second))
FROM
	`LinqDataTypes` `t`

