BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(Concat(Extract(year from `p`.`DateTimeValue`), '-01-01 00:00:00') AS DATETIME)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(day from CAST(Concat(Extract(year from `p`.`DateTimeValue`), '-01-01 00:00:00') AS DATETIME)) > 0

