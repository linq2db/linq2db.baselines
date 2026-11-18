-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SET time_zone = '-05:00'

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	Extract(year from Coalesce(`j`.`Moment`, '0001-01-01'))
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SET time_zone = DEFAULT

