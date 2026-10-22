-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`j`.`Value1` + 1
FROM
	`MissedJoinEntity` `e`
		LEFT JOIN `MissedJoinEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

