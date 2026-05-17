-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	REGEXP_REPLACE((CONCAT(Coalesce(`t`.`CharColumn`, ''), '...++')), '(?-i)[.+]+$', '')
FROM
	`StringTrimTable` `t`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTrimTable` `t1`

