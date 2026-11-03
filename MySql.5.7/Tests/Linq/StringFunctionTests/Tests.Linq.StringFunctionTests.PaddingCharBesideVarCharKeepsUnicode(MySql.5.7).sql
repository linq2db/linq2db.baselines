-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`Id`,
	CASE
		WHEN `t`.`VarCharColumn` IS NULL OR CHAR_LENGTH(`t`.`VarCharColumn`) >= 8
			THEN `t`.`VarCharColumn`
		ELSE LPAD(`t`.`VarCharColumn`, 8, 'Ж')
	END
FROM
	`StringTypesTable` `t`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTypesTable` `t1`

