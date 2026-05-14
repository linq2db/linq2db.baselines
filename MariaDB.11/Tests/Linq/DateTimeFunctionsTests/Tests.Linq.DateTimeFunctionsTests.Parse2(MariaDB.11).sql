-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(CONCAT(CAST(Extract(year from `d`.`DateTimeValue`) AS CHAR(11)), '-02-24 00:00:00') AS DATETIME)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from CAST(CONCAT(CAST(Extract(year from `d`.`DateTimeValue`) AS CHAR(11)), '-02-24 00:00:00') AS DATETIME)) > 0

