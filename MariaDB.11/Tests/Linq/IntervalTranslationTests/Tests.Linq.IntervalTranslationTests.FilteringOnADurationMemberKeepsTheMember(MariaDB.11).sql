-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	`r`.`Grace` > 1800
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	`r`.`Required` > 1800
ORDER BY
	`r`.`Id`

