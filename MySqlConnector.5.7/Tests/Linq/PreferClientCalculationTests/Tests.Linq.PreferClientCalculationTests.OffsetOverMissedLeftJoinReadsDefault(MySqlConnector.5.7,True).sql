-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`e`.`Id`,
	`j`.`Moment`,
	`e`.`Moment`
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Moment`
FROM
	`MissedMomentEntity` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	Extract(year from Coalesce(`j`.`Moment`, '0001-01-01'))
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

