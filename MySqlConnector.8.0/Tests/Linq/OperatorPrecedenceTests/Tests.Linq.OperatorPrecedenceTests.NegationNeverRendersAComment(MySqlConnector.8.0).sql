-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	-(-5 * `r`.`A`),
	-(`r`.`A` * -5),
	-(`r`.`A` - -5),
	-(-5) + `r`.`A`,
	-(-`r`.`A` + `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

