-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`,
	CAST(CAST(Floor(`r`.`F`) AS SIGNED) AS DECIMAL(29, 10))
FROM
	`DoubleValue` `r`
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`F`
FROM
	`DoubleValue` `t1`

