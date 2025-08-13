BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`),
	Concat('original-', `t`.`Str`)
FROM
	`TestLengthModel` `t`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Str`
FROM
	`TestLengthModel` `t1`

