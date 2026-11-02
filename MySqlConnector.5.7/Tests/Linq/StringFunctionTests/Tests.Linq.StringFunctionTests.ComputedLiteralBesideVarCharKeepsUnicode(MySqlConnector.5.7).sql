-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTypesTable` `t1`

