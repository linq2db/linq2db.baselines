-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`e`.`Id`,
	`j`.`Moment`,
	`e`.`Moment`
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Moment`
FROM
	`MissedMomentEntity` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	Extract(year from Coalesce(`j`.`Moment`, '0001-01-01'))
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

