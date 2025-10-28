BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Value Int32
SET     @Value = 1

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Day))
FROM
	`LinqDataTypes` `t`

