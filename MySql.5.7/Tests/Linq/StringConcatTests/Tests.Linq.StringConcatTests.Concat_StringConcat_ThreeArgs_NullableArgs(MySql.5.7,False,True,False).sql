-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CONCAT(`t`.`Value1`, Coalesce(`t`.`Value2`, ''), `t`.`Value3`)
FROM
	`StringConcatThreeNullEntity` `t`
ORDER BY
	`t`.`ID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value3`
FROM
	`StringConcatThreeNullEntity` `t1`

