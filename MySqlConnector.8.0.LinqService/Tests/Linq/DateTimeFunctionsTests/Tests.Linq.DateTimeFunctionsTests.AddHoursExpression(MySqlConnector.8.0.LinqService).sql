BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @Hour Int32
SET     @Hour = 22

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @Hour Hour))
FROM
	`LinqDataTypes` `t`

