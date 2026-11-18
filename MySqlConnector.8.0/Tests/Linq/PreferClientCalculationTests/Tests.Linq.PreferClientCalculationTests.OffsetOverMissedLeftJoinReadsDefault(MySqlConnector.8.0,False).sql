-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`e`.`Id`,
	CASE
		WHEN Coalesce(`j`.`Moment`, '0001-01-01') > `e`.`Moment`
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(`j`.`Moment`, '0001-01-01') <= `e`.`Moment`
			THEN 'y'
		ELSE 'n'
	END
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Moment`
FROM
	`MissedMomentEntity` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	Extract(year from Coalesce(`j`.`Moment`, '0001-01-01'))
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

