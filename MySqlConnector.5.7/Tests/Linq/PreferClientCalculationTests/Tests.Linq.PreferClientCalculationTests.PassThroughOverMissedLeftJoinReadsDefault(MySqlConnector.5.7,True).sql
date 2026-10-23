-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	Coalesce(`j`.`Value1`, 0) + 1,
	Coalesce(`j`.`Value1`, 0) + 1
FROM
	`MissedJoinEntity` `e`
		LEFT JOIN `MissedJoinEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

