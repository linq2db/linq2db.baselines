-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_1`.`GrpId`,
	Coalesce(GROUP_CONCAT(DISTINCT `g_1`.`Value` ORDER BY `g_1`.`Value` SEPARATOR ''), '')
FROM
	`ConcatGroupedEntity` `g_1`
GROUP BY
	`g_1`.`GrpId`
ORDER BY
	`g_1`.`GrpId`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`PK`,
	`t1`.`GrpId`,
	`t1`.`Value`
FROM
	`ConcatGroupedEntity` `t1`

