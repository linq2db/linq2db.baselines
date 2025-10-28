BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval -1 Week))
FROM
	`LinqDataTypes` `t`

