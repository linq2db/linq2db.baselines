-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	CAST(CAST(`r`.`Grace` AS SIGNED) * 10000000 AS DOUBLE) / 600000000 > 30
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	CAST(CAST(`r`.`Required` AS SIGNED) * 10000000 AS DOUBLE) / 600000000 > 30
ORDER BY
	`r`.`Id`

