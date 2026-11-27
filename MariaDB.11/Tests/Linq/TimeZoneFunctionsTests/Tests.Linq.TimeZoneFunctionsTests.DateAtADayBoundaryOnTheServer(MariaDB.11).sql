-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	Date(`r`.`Dto`)
FROM
	`ZonedRow` `r`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT DISTINCT
	Date(`g_1`.`Dto`)
FROM
	`ZonedRow` `g_1`
LIMIT 2

