-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	RTRIM(Replace(`t`.`NCharColumn`, `t`.`VarCharColumn`, 'x')),
	RTRIM(Replace(`t`.`CharColumn`, `t`.`VarCharColumn`, 'x'))
FROM
	`StringTypesTable` `t`
ORDER BY
	`t`.`Id`

