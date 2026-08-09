-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	Date_Add('2026-03-01', Interval ((CAST(`r`.`Grace` AS SIGNED) * 10000000) / 10) Microsecond),
	Date_Add('2026-03-01', Interval ((CAST(`r`.`Required` AS SIGNED) * 10000000) / 10) Microsecond)
FROM
	`OptionalDurationRow` `r`
ORDER BY
	`r`.`Id`

