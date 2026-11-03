-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`BooleanTable` `r`
ORDER BY
	`r`.`Value1` <> `r`.`Value4` OR `r`.`Value4` IS NULL,
	`r`.`Id`

