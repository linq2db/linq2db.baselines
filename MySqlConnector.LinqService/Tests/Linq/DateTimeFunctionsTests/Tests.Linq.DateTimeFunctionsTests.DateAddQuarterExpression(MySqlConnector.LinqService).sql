BeforeExecute
-- MySqlConnector MySql
DECLARE @p Int32
SET     @p = -1

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval @p Quarter) as Date)
FROM
	`LinqDataTypes` `t`

