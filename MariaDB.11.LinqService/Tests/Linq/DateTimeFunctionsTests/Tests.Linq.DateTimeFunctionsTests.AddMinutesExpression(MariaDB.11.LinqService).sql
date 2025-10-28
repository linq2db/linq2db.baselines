BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Minute Int32
SET     @Minute = -8

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval @Minute Minute))
FROM
	`LinqDataTypes` `t`

