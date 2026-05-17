-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`g_1`.`StatsTypeId`,
	`st`.`FullName`,
	`g_1`.`GroupId`
FROM
	`GroupStatsType` `g_1`
		LEFT JOIN `StatsType` `st` ON `st`.`Id` = `g_1`.`StatsTypeId`

