BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Second Int32
SET     @Second = -35

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @Second Second))
FROM
	`LinqDataTypes` `t`

