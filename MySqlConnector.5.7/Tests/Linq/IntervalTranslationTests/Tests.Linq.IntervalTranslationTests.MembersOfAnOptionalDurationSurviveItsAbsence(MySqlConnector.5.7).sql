-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`,
	CAST((`r`.`Grace` DIV 60) % 60 AS SIGNED),
	CAST(`r`.`Grace` AS DECIMAL(29, 10)) / 60,
	CAST(`r`.`Required` AS DECIMAL(29, 10)) / 60
FROM
	`OptionalDurationRow` `r`
ORDER BY
	`r`.`Id`

