-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CONCAT(`t`.`Value1`, Coalesce(`t`.`Value2`, ''))
FROM
	`StringConcatNullEntity` `t`
ORDER BY
	`t`.`ID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Value1`,
	`t1`.`Value2`
FROM
	`StringConcatNullEntity` `t1`

