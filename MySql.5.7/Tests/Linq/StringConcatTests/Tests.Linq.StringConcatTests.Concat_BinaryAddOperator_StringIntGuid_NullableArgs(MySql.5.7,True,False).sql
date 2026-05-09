-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Concat(Coalesce(`t`.`Value1`, ''), CAST(`t`.`Value2` AS CHAR(11)), Lower(CAST(`t`.`Value3` AS CHAR(36))))
FROM
	`StringConcatIntGuidNullEntity` `t`
ORDER BY
	`t`.`ID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value3`
FROM
	`StringConcatIntGuidNullEntity` `t1`

