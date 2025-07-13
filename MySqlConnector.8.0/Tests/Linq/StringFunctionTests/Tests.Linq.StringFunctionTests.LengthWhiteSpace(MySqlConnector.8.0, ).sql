BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`)
FROM
	`TestLengthModel` `t`
LIMIT 2

