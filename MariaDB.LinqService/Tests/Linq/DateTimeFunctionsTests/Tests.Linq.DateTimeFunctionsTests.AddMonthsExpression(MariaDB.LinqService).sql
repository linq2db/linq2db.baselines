BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p Int32
SET     @p = -2

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval @p Month) as Date)
FROM
	`LinqDataTypes` `t`

