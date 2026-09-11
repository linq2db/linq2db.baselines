-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	CAST((`r`.`Grace` DIV 60) % 60 AS SIGNED),
	CAST(`r`.`Grace` AS DOUBLE) / 60,
	CAST(`r`.`Required` AS DOUBLE) / 60
FROM
	`OptionalDurationRow` `r`
ORDER BY
	`r`.`Id`

