-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`Id`,
	`x`.`Flag`
FROM
	`ConvertedFlagRow` `x`
UNION
SELECT
	`x_1`.`Id`,
	CAST(NULL AS CHAR)
FROM
	`ConvertedFlagRow` `x_1`

