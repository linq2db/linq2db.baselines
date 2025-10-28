BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval 5 Day))
FROM
	`LinqDataTypes` `t`

