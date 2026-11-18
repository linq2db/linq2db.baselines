-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	RTRIM(Replace(`t`.`NCharColumn`, `t`.`VarCharColumn`, 'x')),
	RTRIM(Replace(`t`.`CharColumn`, `t`.`VarCharColumn`, 'x'))
FROM
	`StringTypesTable` `t`
ORDER BY
	`t`.`Id`

