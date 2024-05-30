BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = 2

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Month))
FROM
	`LinqDataTypes` `t`

