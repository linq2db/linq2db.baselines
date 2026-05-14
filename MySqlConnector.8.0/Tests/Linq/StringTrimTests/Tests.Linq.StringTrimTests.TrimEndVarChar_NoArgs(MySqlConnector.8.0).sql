-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	RTRIM(Concat(`t`.`VarCharColumn`, '   '))
FROM
	`StringTrimTable` `t`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTrimTable` `t1`

