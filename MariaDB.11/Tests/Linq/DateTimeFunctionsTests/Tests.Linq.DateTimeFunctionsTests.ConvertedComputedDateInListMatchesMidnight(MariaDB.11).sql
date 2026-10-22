-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @CoarseMidnight Datetime -- DateTime
SET     @CoarseMidnight = '2026-06-01'

SELECT
	COUNT(*)
FROM
	`ConvertedDayPairRow` `r`
WHERE
	Coalesce(`r`.`ClosedOn`, `r`.`OpenedOn`) IN (@CoarseMidnight)

