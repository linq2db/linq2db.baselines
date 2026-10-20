-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SET time_zone = '-05:00'

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Extract(year from Coalesce(`j`.`Moment`, '0001-01-01'))
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SET time_zone = DEFAULT

