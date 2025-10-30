BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Coalesce(GROUP_CONCAT(`t1`.`NullableValue` ORDER BY `t1`.`NotNullableValue` SEPARATOR ', '), '')
FROM
	`SampleClass` `t1`

