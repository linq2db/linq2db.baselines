BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_1`.`Id`,
	Coalesce(GROUP_CONCAT(`g_1`.`NullableValue` ORDER BY `g_1`.`NullableValue`, `g_1`.`Id` SEPARATOR ', '), ''),
	GROUP_CONCAT(Coalesce(`g_1`.`NullableValue`, '') ORDER BY `g_1`.`NullableValue` SEPARATOR ', ')
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`
ORDER BY
	`g_1`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`NullableValue`,
	`t1`.`NotNullableValue`,
	`t1`.`VarcharValue`,
	`t1`.`NVarcharValue`
FROM
	`SampleClass` `t1`

