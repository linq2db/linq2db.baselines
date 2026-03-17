-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	GROUP_CONCAT(Coalesce(`t1`.`NullableValue`, '') ORDER BY `t1`.`NotNullableValue` SEPARATOR ', ')
FROM
	`SampleClass` `t1`

