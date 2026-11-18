-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`BooleanTable` `r`
ORDER BY
	`r`.`Value1` <> `r`.`Value4` OR `r`.`Value4` IS NULL,
	`r`.`Id`

