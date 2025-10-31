BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CONCAT_WS(', ', `t`.`NullableValue`, `t`.`NotNullableValue`, `t`.`VarcharValue`, `t`.`NVarcharValue`),
	(
		SELECT
			Coalesce(GROUP_CONCAT(DISTINCT `t1`.`item` ORDER BY `t1`.`item` SEPARATOR ', '), '')
		FROM
			(
				SELECT `t`.`NullableValue` AS `item`
				UNION ALL
				SELECT `t`.`NotNullableValue`
				UNION ALL
				SELECT `t`.`VarcharValue`
				UNION ALL
				SELECT `t`.`NVarcharValue`) `t1`
	)
FROM
	`SampleClass` `t`

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

