-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` + `r`.`B`),
	-(`r`.`A` + `r`.`B`),
	-(`r`.`A` - `r`.`B`),
	-(`r`.`A` - `r`.`B`),
	-CAST(`r`.`A` & `r`.`B` AS SIGNED),
	-CAST(`r`.`A` & `r`.`B` AS SIGNED),
	-CAST(`r`.`A` | `r`.`B` AS SIGNED),
	-CAST(`r`.`A` | `r`.`B` AS SIGNED),
	-CAST(`r`.`A` ^ `r`.`B` AS SIGNED),
	-CAST(`r`.`A` ^ `r`.`B` AS SIGNED),
	`r`.`B`,
	-CAST(~`r`.`B` AS SIGNED),
	-(-5),
	-(-5 * `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(-5)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

