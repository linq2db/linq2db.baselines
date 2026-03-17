-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = 41

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @Value Second))
FROM
	`LinqDataTypes` `t`

