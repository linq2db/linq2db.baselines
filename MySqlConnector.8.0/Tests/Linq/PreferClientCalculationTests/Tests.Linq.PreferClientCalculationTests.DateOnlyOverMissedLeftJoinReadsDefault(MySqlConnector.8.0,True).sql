-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`e`.`Id`,
	`j`.`Day`,
	`e`.`Day`
FROM
	`MissedDayEntity` `e`
		LEFT JOIN `MissedDayEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Day`
FROM
	`MissedDayEntity` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	Extract(year from Coalesce(`j`.`Day`, '0001-01-01'))
FROM
	`MissedDayEntity` `e`
		LEFT JOIN `MissedDayEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

