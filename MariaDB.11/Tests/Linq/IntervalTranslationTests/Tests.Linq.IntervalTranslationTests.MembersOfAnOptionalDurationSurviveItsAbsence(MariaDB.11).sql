-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	CAST(((CAST(`r`.`Grace` AS SIGNED) * 10000000) DIV 600000000) % 60 AS SIGNED),
	CAST(CAST(`r`.`Grace` AS SIGNED) * 10000000 AS DOUBLE) / 600000000,
	CAST(CAST(`r`.`Required` AS SIGNED) * 10000000 AS DOUBLE) / 600000000
FROM
	`OptionalDurationRow` `r`
ORDER BY
	`r`.`Id`

