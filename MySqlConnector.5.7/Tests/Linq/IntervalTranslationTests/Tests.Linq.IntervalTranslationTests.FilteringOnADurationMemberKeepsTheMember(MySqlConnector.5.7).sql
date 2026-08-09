-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	`r`.`Grace` > 1800
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	`r`.`Required` > 1800
ORDER BY
	`r`.`Id`

