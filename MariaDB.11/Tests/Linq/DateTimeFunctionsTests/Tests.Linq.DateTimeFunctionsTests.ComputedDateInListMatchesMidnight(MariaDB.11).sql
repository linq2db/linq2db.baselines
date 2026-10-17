-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseDayPairRow` `r`
WHERE
	Coalesce(`r`.`ClosedOn`, `r`.`OpenedOn`) IN ('2026-06-01')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseDayPairRow` `r`
WHERE
	Coalesce(`r`.`ClosedOn`, `r`.`OpenedOn`) IN ('2026-06-01')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseDayPairRow` `r`
WHERE
	CAST(`r`.`Value` AS DATE) IN ('2026-06-01')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`CoarseDayPairRow` `r`
WHERE
	Coalesce(`r`.`ClosedOn`, `r`.`OpenedOn`) IN ('2026-06-01 10:00:00')

