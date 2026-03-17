-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = 2

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Month))
FROM
	`LinqDataTypes` `t`

