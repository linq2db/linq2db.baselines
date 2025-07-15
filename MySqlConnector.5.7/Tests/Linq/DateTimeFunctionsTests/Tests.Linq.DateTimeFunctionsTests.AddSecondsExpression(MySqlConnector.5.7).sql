BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Second Int32
SET     @Second = -35

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @Second Second))
FROM
	`LinqDataTypes` `t`

