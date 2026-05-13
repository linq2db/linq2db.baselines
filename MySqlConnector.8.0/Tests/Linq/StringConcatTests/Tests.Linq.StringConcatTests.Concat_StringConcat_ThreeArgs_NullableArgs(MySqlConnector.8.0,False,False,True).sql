-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Concat(`t`.`Value1`, `t`.`Value2`, Coalesce(`t`.`Value3`, ''))
FROM
	`StringConcatThreeNullEntity` `t`
ORDER BY
	`t`.`ID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value3`
FROM
	`StringConcatThreeNullEntity` `t1`

