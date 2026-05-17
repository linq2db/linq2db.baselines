-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(CONCAT(CAST(Extract(year from `t`.`DateTimeValue`) AS CHAR(11)), '-01-01') AS DATE)
FROM
	`LinqDataTypes` `t`

