-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CONCAT('...', Coalesce(`t`.`VarCharColumn`, ''))
FROM
	`StringTrimTable` `t`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTrimTable` `t1`

