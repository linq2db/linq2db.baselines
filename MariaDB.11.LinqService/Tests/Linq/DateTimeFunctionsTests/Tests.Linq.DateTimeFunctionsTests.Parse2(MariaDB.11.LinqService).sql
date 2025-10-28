BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	CAST(Concat(Extract(year from `d`.`DateTimeValue`), '-02-24 00:00:00') AS DATETIME)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from CAST(Concat(Extract(year from `d`.`DateTimeValue`), '-02-24 00:00:00') AS DATETIME)) > 0

