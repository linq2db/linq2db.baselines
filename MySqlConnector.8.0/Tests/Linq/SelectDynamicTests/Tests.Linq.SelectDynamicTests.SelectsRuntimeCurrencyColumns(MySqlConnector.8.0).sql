-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	`r`.`Currency1Amount`,
	`r`.`Currency2Amount`
FROM
	`Balance` `r`
WHERE
	`r`.`Currency1Amount` IS NOT NULL OR `r`.`Currency2Amount` IS NOT NULL

