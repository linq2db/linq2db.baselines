BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Value Int32
SET     @Value = 2

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Month))
FROM
	`LinqDataTypes` `t`

