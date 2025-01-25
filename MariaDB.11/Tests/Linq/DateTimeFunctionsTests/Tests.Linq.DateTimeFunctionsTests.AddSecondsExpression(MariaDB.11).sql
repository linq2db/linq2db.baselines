BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = -35

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @p Second))
FROM
	`LinqDataTypes` `t`

