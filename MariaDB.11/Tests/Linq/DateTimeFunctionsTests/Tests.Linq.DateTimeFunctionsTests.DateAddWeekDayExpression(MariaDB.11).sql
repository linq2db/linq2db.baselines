BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = 1

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Day))
FROM
	`LinqDataTypes` `t`

