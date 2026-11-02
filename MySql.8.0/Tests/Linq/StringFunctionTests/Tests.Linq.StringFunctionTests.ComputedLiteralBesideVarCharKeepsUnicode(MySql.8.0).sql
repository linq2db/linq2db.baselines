-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	Replace(`t`.`VarCharColumn`, 'A', 'Ж'),
	Replace(`t`.`VarCharColumn`, 'A', 'Ж'),
	CASE
		WHEN `t`.`VarCharColumn` IS NULL OR CHAR_LENGTH(`t`.`VarCharColumn`) >= 8
			THEN `t`.`VarCharColumn`
		ELSE LPAD(`t`.`VarCharColumn`, 8, 'Ж')
	END
FROM
	`StringTypesTable` `t`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTypesTable` `t1`

