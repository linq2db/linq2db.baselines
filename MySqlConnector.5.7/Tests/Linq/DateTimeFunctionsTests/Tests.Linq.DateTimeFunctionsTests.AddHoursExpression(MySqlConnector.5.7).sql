BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = 22

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @p Hour))
FROM
	`LinqDataTypes` `t`

