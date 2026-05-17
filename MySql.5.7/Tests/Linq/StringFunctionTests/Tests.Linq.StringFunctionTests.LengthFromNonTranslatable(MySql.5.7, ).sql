-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`),
	CONCAT('original-', Coalesce(`t`.`Str`, ''))
FROM
	`TestLengthModel` `t`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Str`
FROM
	`TestLengthModel` `t1`

