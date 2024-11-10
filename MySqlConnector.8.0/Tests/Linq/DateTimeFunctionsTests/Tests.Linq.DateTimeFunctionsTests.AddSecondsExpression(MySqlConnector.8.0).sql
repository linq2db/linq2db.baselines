BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Second Int32
SET     @Second = -35

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @Second Second))
FROM
	`LinqDataTypes` `t`

