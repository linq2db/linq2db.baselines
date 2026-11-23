-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	-(-5)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

