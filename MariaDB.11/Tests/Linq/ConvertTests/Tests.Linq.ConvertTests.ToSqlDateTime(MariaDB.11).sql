-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01 00:20:00') AS DATETIME)
FROM
	`LinqDataTypes` `t`

