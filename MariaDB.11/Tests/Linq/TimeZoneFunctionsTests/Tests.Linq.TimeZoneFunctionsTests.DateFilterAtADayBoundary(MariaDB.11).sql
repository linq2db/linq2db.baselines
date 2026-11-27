-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @date Datetime -- DateTime
SET     @date = '2020-12-31'

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	Date(`r`.`Dto`) = @date

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @later Datetime -- DateTime
SET     @later = '2020-12-31 01:00:00'

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	Date(`r`.`Dto`) = @later

