BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`x`.`c1`
FROM
	(
		SELECT
			CONCAT_WS(', ', CASE
				WHEN LOCATE('A', `t`.`NullableValue`) > 0 THEN `t`.`NullableValue`
				ELSE NULL
			END, CASE
				WHEN LOCATE('A', `t`.`NotNullableValue`) > 0 THEN `t`.`NotNullableValue`
				ELSE NULL
			END, CASE
				WHEN LOCATE('A', `t`.`VarcharValue`) > 0 THEN `t`.`VarcharValue`
				ELSE NULL
			END, CASE
				WHEN LOCATE('A', `t`.`NVarcharValue`) > 0 THEN `t`.`NVarcharValue`
				ELSE NULL
			END) as `c1`
		FROM
			`SampleClass` `t`
	) `x`
WHERE
	`x`.`c1` RLIKE '[^	
                 　]'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`NullableValue`,
	`t1`.`NotNullableValue`,
	`t1`.`VarcharValue`,
	`t1`.`NVarcharValue`
FROM
	`SampleClass` `t1`

