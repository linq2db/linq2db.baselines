-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	Extract(hour from `r`.`Dto`)
FROM
	`ZonedRow` `r`
LIMIT 2

