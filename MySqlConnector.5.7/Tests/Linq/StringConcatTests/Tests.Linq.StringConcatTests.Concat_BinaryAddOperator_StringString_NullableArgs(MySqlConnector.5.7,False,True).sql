-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Concat(`t`.`Value1`, Coalesce(`t`.`Value2`, ''))
FROM
	`StringConcatNullEntity` `t`
ORDER BY
	`t`.`ID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value1`,
	`t1`.`Value2`
FROM
	`StringConcatNullEntity` `t1`

