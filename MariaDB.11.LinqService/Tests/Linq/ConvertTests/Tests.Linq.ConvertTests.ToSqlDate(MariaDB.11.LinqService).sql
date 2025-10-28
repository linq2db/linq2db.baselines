BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	CAST(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01') AS DATE)
FROM
	`LinqDataTypes` `t`

