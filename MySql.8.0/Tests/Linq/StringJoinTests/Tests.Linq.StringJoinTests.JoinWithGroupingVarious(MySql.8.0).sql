BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`Id`,
	GROUP_CONCAT(DISTINCT Coalesce(`g_1`.`NullableValue`, '') SEPARATOR ', '),
	Coalesce(GROUP_CONCAT(DISTINCT `g_1`.`NullableValue` SEPARATOR ', '), ''),
	Coalesce(GROUP_CONCAT(DISTINCT `g_1`.`NullableValue` ORDER BY `g_1`.`NullableValue` DESC SEPARATOR ', '), ''),
	GROUP_CONCAT(DISTINCT `g_1`.`NotNullableValue` SEPARATOR ', '),
	GROUP_CONCAT(DISTINCT `g_1`.`NotNullableValue` ORDER BY `g_1`.`NotNullableValue` DESC SEPARATOR ', ')
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`
ORDER BY
	`g_1`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`NullableValue`,
	`t1`.`NotNullableValue`,
	`t1`.`VarcharValue`,
	`t1`.`NVarcharValue`
FROM
	`SampleClass` `t1`

