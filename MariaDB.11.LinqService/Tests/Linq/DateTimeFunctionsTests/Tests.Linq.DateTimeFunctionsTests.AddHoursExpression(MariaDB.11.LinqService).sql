BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Hour Int32
SET     @Hour = 22

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @Hour Hour))
FROM
	`LinqDataTypes` `t`

