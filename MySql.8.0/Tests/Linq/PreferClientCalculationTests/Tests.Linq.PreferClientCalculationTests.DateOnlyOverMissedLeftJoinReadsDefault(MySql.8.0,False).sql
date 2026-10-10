-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @bound Datetime -- DateTime
SET     @bound = '2000-01-01'

SELECT
	`e`.`Id`,
	CASE
		WHEN Coalesce(`j`.`Day`, '0001-01-01') > @bound THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(`j`.`Day`, '0001-01-01') < @bound THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(`j`.`Day`, '0001-01-01') > `e`.`Day` THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(`j`.`Day`, '0001-01-01') <= `e`.`Day` THEN 'y'
		ELSE 'n'
	END
FROM
	`MissedDayEntity` `e`
		LEFT JOIN `MissedDayEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Day`
FROM
	`MissedDayEntity` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	Extract(year from Coalesce(`j`.`Day`, '0001-01-01'))
FROM
	`MissedDayEntity` `e`
		LEFT JOIN `MissedDayEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

