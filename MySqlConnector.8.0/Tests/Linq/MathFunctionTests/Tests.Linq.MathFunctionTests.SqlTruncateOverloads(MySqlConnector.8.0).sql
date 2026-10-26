-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	Truncate(`r`.`D`, 0),
	Truncate(`r`.`F`, 0),
	Truncate(`r`.`N`, 0),
	Truncate(`r`.`G`, 0),
	Truncate(`r`.`D`, 0),
	Truncate(`r`.`F`, 0)
FROM
	`TruncateValues` `r`
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`D`,
	`t1`.`F`,
	`t1`.`N`,
	`t1`.`G`
FROM
	`TruncateValues` `t1`

