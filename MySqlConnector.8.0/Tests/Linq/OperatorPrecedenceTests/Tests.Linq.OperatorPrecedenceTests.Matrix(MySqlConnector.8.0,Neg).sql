-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	-(-5)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

