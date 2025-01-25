BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p Int32
SET     @p = -1

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Week))
FROM
	`LinqDataTypes` `t`

