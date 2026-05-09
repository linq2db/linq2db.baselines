-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`g_1`.`GrpId`,
	GROUP_CONCAT(CAST(`g_1`.`IntV` AS CHAR(11)) ORDER BY `g_1`.`PK` SEPARATOR '')
FROM
	`ConcatGroupedTypedEntity` `g_1`
GROUP BY
	`g_1`.`GrpId`
ORDER BY
	`g_1`.`GrpId`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`PK`,
	`t1`.`GrpId`,
	`t1`.`GuidV`,
	`t1`.`IntV`
FROM
	`ConcatGroupedTypedEntity` `t1`

