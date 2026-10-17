-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CASE
		WHEN `r`.`Id` > 0 THEN `r`.`OpenedOn`
		ELSE `r`.`ClosedOn`
	END
FROM
	`CoarseDayPairRow` `r`
UNION ALL
SELECT
	CAST('2026-06-01 10:00:00' AS DATETIME)
FROM
	`CoarseDayPairRow` `r_1`

