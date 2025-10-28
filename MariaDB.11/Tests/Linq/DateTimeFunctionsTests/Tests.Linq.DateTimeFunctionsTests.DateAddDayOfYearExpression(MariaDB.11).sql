BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = 3

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Day))
FROM
	`LinqDataTypes` `t`

