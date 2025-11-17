-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CONCAT_WS(', ', CASE
		WHEN LOCATE('A', `x`.`NullableValue`) > 0 THEN `x`.`NullableValue`
		ELSE NULL
	END, CASE
		WHEN LOCATE('A', `x`.`NotNullableValue`) > 0 THEN `x`.`NotNullableValue`
		ELSE NULL
	END, CASE
		WHEN LOCATE('A', `x`.`VarcharValue`) > 0 THEN `x`.`VarcharValue`
		ELSE NULL
	END, CASE
		WHEN LOCATE('A', `x`.`NVarcharValue`) > 0 THEN `x`.`NVarcharValue`
		ELSE NULL
	END)
FROM
	`SampleClass` `x`
WHERE
	CHAR_LENGTH(CONCAT_WS(', ', CASE
		WHEN LOCATE('A', `x`.`NullableValue`) > 0 THEN `x`.`NullableValue`
		ELSE NULL
	END, CASE
		WHEN LOCATE('A', `x`.`NotNullableValue`) > 0 THEN `x`.`NotNullableValue`
		ELSE NULL
	END, CASE
		WHEN LOCATE('A', `x`.`VarcharValue`) > 0 THEN `x`.`VarcharValue`
		ELSE NULL
	END, CASE
		WHEN LOCATE('A', `x`.`NVarcharValue`) > 0 THEN `x`.`NVarcharValue`
		ELSE NULL
	END)) <> 0

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`NullableValue`,
	`t1`.`NotNullableValue`,
	`t1`.`VarcharValue`,
	`t1`.`NVarcharValue`
FROM
	`SampleClass` `t1`

