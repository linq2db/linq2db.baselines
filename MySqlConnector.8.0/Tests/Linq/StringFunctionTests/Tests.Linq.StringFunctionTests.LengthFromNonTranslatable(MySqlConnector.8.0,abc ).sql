-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`),
	CONCAT('original-', Coalesce(`t`.`Str`, ''))
FROM
	`TestLengthModel` `t`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Str`
FROM
	`TestLengthModel` `t1`

