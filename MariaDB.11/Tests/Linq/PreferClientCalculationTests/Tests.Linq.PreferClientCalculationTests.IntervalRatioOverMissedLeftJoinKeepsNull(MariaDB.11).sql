-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(TimestampDiff(Microsecond, `e`.`Date`, `e`.`Date2`) * 10 AS DOUBLE) / CAST(TimestampDiff(Microsecond, `j`.`Date`, `j`.`Date2`) * 10 AS DOUBLE)
FROM
	`MissedDivisorEntity` `e`
		LEFT JOIN `MissedDivisorEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

