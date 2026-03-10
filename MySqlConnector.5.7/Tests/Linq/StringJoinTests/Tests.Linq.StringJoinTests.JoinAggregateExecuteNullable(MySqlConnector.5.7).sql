-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	GROUP_CONCAT(Coalesce(`t1`.`NullableValue`, '') ORDER BY `t1`.`NotNullableValue` SEPARATOR ', ')
FROM
	`SampleClass` `t1`

