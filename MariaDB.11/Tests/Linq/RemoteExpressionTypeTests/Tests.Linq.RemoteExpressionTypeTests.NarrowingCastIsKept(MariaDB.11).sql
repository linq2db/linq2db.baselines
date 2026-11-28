-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`r`.`A` + `r`.`B` AS DECIMAL(29, 10))
FROM
	`DecimalTable` `r`
LIMIT 2

