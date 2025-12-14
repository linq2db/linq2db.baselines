-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`),
	Concat('original-', `t`.`Str`)
FROM
	`TestLengthModel` `t`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Str`
FROM
	`TestLengthModel` `t1`

