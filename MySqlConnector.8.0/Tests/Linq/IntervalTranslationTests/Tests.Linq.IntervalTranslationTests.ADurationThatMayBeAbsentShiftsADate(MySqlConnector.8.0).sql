-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	Date_Add('2026-03-01', Interval ((`r`.`Grace` * 10000000) DIV 10) Microsecond),
	Date_Add('2026-03-01', Interval ((`r`.`Required` * 10000000) DIV 10) Microsecond)
FROM
	`OptionalDurationRow` `r`
ORDER BY
	`r`.`Id`

