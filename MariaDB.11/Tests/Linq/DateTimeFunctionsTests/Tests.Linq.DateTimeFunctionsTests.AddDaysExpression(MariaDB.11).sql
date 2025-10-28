BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Date Int32
SET     @Date = 5

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Date Day))
FROM
	`LinqDataTypes` `t`

