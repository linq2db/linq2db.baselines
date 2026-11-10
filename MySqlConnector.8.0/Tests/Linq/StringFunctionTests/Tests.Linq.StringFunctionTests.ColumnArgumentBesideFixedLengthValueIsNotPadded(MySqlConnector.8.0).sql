-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	RTRIM(Replace(`t`.`NCharColumn`, `t`.`VarCharColumn`, 'x')),
	RTRIM(Replace(`t`.`CharColumn`, `t`.`VarCharColumn`, 'x'))
FROM
	`StringTypesTable` `t`
ORDER BY
	`t`.`Id`

