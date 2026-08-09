-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	CAST(CAST(`r`.`Grace` AS SIGNED) * 10000000 AS DECIMAL(29, 10)) / 600000000 > 30
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	CAST(CAST(`r`.`Required` AS SIGNED) * 10000000 AS DECIMAL(29, 10)) / 600000000 > 30
ORDER BY
	`r`.`Id`

