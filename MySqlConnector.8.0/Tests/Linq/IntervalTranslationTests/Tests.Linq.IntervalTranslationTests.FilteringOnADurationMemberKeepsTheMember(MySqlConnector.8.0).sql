-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	`r`.`Grace` > 1800
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	`r`.`Required` > 1800
ORDER BY
	`r`.`Id`

