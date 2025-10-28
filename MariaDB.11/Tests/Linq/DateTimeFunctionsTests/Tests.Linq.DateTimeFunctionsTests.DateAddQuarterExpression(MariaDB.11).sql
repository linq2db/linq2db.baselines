BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = -1

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Quarter))
FROM
	`LinqDataTypes` `t`

