-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	REGEXP_REPLACE(`t`.`VarCharColumn`, '(?-i)[.+]+$', '')
FROM
	`StringTrimTable` `t`
ORDER BY
	`t`.`Id`

