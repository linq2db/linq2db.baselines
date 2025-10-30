BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CONCAT_WS(', ', Coalesce(`t`.`NullableValue`, ''), `t`.`NotNullableValue`, Coalesce(`t`.`VarcharValue`, ''), Coalesce(`t`.`NVarcharValue`, '')),
	(
		SELECT
			Coalesce(GROUP_CONCAT(DISTINCT `t1`.`item` ORDER BY `t1`.`item` SEPARATOR ', '), '')
		FROM
			(
				SELECT `t`.`NotNullableValue` AS `item`
				UNION ALL
				SELECT `t`.`NotNullableValue`
				UNION ALL
				SELECT `t`.`NotNullableValue`
				UNION ALL
				SELECT `t`.`NVarcharValue`) `t1`
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT(DISTINCT CASE
				WHEN `t2`.`item` <> 'A' OR `t2`.`item` IS NULL THEN Coalesce(`t2`.`item`, '')
				ELSE NULL
			END ORDER BY CASE
				WHEN `t2`.`item` IS NULL THEN 0
				ELSE 1
			END, `t2`.`item` SEPARATOR ', '), '')
		FROM
			(
				SELECT `t`.`NotNullableValue` AS `item`
				UNION ALL
				SELECT `t`.`NotNullableValue`
				UNION ALL
				SELECT `t`.`NotNullableValue`
				UNION ALL
				SELECT `t`.`NVarcharValue`) `t2`
	)
FROM
	`SampleClass` `t`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`NullableValue`,
	`t1`.`NotNullableValue`,
	`t1`.`VarcharValue`,
	`t1`.`NVarcharValue`
FROM
	`SampleClass` `t1`

