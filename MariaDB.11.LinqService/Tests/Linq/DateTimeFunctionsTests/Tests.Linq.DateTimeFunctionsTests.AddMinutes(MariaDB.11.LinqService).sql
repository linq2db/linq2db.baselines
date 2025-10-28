BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval -8 Minute))
FROM
	`LinqDataTypes` `t`

