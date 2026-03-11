-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`)
FROM
	`TestLengthModel` `t`
LIMIT 2

