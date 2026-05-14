-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(CONCAT(CAST(Extract(year from `p`.`DateTimeValue`) AS CHAR(11)), '-01-01 00:00:00') AS DATETIME)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(day from CAST(CONCAT(CAST(Extract(year from `p`.`DateTimeValue`) AS CHAR(11)), '-01-01 00:00:00') AS DATETIME)) > 0

