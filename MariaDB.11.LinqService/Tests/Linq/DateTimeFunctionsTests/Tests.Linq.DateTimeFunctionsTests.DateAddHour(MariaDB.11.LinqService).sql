BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval 1 Hour))
FROM
	`LinqDataTypes` `t`

