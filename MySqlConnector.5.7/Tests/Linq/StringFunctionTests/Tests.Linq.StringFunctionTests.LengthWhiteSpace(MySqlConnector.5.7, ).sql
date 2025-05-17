BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`)
FROM
	`TestLengthModel` `t`
LIMIT 2

