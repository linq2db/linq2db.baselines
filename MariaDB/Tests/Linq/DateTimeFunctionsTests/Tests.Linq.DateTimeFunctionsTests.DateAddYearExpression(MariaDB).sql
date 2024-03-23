BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p Int32
SET     @p = 11

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval @p Year) as Date)
FROM
	`LinqDataTypes` `t`

