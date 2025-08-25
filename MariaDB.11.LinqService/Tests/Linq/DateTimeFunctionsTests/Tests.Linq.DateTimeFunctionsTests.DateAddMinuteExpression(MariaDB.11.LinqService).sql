BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Value Int32
SET     @Value = 5

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval @Value Minute))
FROM
	`LinqDataTypes` `t`

