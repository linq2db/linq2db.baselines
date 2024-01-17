BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @p Int32
SET     @p = -35

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p Second)
FROM
	`LinqDataTypes` `t`

