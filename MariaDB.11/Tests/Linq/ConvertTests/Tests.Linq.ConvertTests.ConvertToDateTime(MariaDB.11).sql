-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(Concat(CAST(Extract(year from `p`.`DateTimeValue`) AS CHAR(11)), '-01-01 00:00:00') AS DATETIME)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(day from CAST(Concat(CAST(Extract(year from `p`.`DateTimeValue`) AS CHAR(11)), '-01-01 00:00:00') AS DATETIME)) > 0

