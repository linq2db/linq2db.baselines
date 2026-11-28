-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`,
	CAST(Floor(CASE
		WHEN `r`.`D` - FLOOR(`r`.`D`) = 0.5 THEN ROUND(`r`.`D` * 0.5, 0) * 2
		ELSE ROUND(`r`.`D`, 0)
	END) AS SIGNED),
	CAST(Floor(CASE
		WHEN `r`.`F` - FLOOR(`r`.`F`) = 0.5 THEN ROUND(`r`.`F` * 0.5, 0) * 2
		ELSE ROUND(`r`.`F`, 0)
	END) AS SIGNED)
FROM
	`MidpointValues` `r`
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`D`,
	`t1`.`F`
FROM
	`MidpointValues` `t1`

