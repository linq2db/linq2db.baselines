-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`GrpId`,
	Coalesce(GROUP_CONCAT(`g_1`.`Value` ORDER BY `g_1`.`PK` SEPARATOR ''), '')
FROM
	`ConcatGroupedEntity` `g_1`
GROUP BY
	`g_1`.`GrpId`
ORDER BY
	`g_1`.`GrpId`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`PK`,
	`t1`.`GrpId`,
	`t1`.`Value`
FROM
	`ConcatGroupedEntity` `t1`

