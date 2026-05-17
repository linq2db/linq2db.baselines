-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = 11

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Year))
FROM
	`LinqDataTypes` `t`

