-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`g_1`.`GrpId`,
	Coalesce(GROUP_CONCAT(`g_1`.`Value` ORDER BY `g_1`.`PK` SEPARATOR ''), '')
FROM
	`ConcatGroupedEntity` `g_1`
GROUP BY
	`g_1`.`GrpId`
ORDER BY
	`g_1`.`GrpId`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`PK`,
	`t1`.`GrpId`,
	`t1`.`Value`
FROM
	`ConcatGroupedEntity` `t1`

