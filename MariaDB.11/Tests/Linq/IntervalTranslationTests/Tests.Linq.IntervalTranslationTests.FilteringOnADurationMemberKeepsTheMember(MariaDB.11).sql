-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	CAST(CAST(`r`.`Grace` AS SIGNED) * 10000000 AS DOUBLE) / 600000000 > 30
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	CAST(CAST(`r`.`Required` AS SIGNED) * 10000000 AS DOUBLE) / 600000000 > 30
ORDER BY
	`r`.`Id`

