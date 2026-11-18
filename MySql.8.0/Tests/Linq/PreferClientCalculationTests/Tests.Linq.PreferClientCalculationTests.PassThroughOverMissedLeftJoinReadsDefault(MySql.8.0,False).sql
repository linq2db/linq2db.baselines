-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	Coalesce(`j`.`Value1`, 0) + 1,
	Coalesce(`j`.`Value1`, 0) + 1
FROM
	`MissedJoinEntity` `e`
		LEFT JOIN `MissedJoinEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

