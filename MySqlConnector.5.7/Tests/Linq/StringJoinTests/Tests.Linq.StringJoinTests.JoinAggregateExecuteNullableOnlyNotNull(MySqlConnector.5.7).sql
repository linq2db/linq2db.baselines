-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Coalesce(GROUP_CONCAT(`t1`.`NullableValue` ORDER BY `t1`.`NotNullableValue` SEPARATOR ', '), '')
FROM
	`SampleClass` `t1`

