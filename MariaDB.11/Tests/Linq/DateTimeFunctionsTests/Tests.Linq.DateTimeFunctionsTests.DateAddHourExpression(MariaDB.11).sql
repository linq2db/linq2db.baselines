-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = 1

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @Value Hour))
FROM
	`LinqDataTypes` `t`

