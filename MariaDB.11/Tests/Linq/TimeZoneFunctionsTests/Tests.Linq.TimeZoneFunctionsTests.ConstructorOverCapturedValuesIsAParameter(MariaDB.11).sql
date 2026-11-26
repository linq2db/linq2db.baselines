-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Datetime -- DateTimeOffset
SET     @p = CONVERT_TZ('2020-06-15 11:20:00.000000', '+00:00', '+00:00')

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	`r`.`Dto` = @p

