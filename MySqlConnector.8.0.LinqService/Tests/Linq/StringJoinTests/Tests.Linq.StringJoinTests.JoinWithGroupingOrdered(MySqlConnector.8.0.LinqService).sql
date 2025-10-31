BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`g_1`.`Id`,
	GROUP_CONCAT(Coalesce(`g_1`.`NullableValue`, '') ORDER BY `g_1`.`NotNullableValue`, `g_1`.`NullableValue` DESC SEPARATOR ', '),
	Coalesce(GROUP_CONCAT(CASE
		WHEN `g_1`.`NullableValue` <> '' THEN `g_1`.`NullableValue`
		ELSE NULL
	END ORDER BY `g_1`.`NotNullableValue`, `g_1`.`NullableValue` DESC SEPARATOR ', '), ''),
	GROUP_CONCAT(`g_1`.`NotNullableValue` ORDER BY `g_1`.`NotNullableValue` DESC, `g_1`.`NullableValue` DESC SEPARATOR ', '),
	GROUP_CONCAT(Coalesce(`g_1`.`NullableValue`, '') ORDER BY `g_1`.`NotNullableValue` DESC SEPARATOR ', '),
	GROUP_CONCAT(`g_1`.`NotNullableValue` ORDER BY `g_1`.`NotNullableValue` DESC SEPARATOR ', '),
	GROUP_CONCAT(`g_1`.`NotNullableValue` ORDER BY CASE
		WHEN `g_1`.`NullableValue` IS NULL THEN 0
		ELSE 1
	END, `g_1`.`NotNullableValue` DESC, `g_1`.`NullableValue` SEPARATOR ', ')
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`
ORDER BY
	`g_1`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`NullableValue`,
	`t1`.`NotNullableValue`,
	`t1`.`VarcharValue`,
	`t1`.`NVarcharValue`
FROM
	`SampleClass` `t1`

