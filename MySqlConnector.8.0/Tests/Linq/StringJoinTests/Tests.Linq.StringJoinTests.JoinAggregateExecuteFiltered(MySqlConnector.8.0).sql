-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Coalesce(GROUP_CONCAT(CASE
		WHEN `t1`.`NullableValue` IN ('A', 'B') THEN `t1`.`NullableValue`
		ELSE NULL
	END ORDER BY `t1`.`NotNullableValue` SEPARATOR ', '), '')
FROM
	`SampleClass` `t1`

