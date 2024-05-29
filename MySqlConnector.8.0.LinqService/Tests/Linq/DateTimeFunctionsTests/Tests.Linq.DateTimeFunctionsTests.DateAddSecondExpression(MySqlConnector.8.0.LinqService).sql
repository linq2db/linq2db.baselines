BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p Int32
SET     @p = 41

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @p Second))
FROM
	`LinqDataTypes` `t`

