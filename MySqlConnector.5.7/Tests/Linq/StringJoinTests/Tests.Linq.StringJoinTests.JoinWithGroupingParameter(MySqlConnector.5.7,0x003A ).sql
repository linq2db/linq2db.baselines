-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @separator VarChar(2) -- String
SET     @separator = ': '

SELECT
	`g_1`.`Id`,
	GROUP_CONCAT(Coalesce(`g_1`.`NullableValue`, '') SEPARATOR @separator),
	GROUP_CONCAT(`g_1`.`NotNullableValue` SEPARATOR @separator)
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`
ORDER BY
	`g_1`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`NullableValue`,
	`t1`.`NotNullableValue`,
	`t1`.`VarcharValue`,
	`t1`.`NVarcharValue`
FROM
	`SampleClass` `t1`

