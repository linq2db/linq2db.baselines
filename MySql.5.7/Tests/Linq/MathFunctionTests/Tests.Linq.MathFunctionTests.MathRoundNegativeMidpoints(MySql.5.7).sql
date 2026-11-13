-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	CASE
		WHEN `r`.`D` - FLOOR(`r`.`D`) = 0.5 THEN ROUND(`r`.`D` * 0.5, 0) * 2
		ELSE ROUND(`r`.`D`, 0)
	END,
	CASE
		WHEN `r`.`D` - FLOOR(`r`.`D`) = 0.5 THEN ROUND(`r`.`D` * 0.5, 0) * 2
		ELSE ROUND(`r`.`D`, 0)
	END,
	ROUND(`r`.`D`),
	CASE
		WHEN `r`.`F` - FLOOR(`r`.`F`) = 0.5 THEN ROUND(`r`.`F` * 0.5, 0) * 2
		ELSE ROUND(`r`.`F`, 0)
	END,
	CASE
		WHEN `r`.`F` - FLOOR(`r`.`F`) = 0.5 THEN ROUND(`r`.`F` * 0.5, 0) * 2
		ELSE ROUND(`r`.`F`, 0)
	END,
	sign(`r`.`F`) * CASE
		WHEN abs(`r`.`F`) - floor(abs(`r`.`F`)) = 0.5 THEN floor(abs(`r`.`F`)) + 1
		ELSE round(abs(`r`.`F`), 0)
	END
FROM
	`MidpointValues` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`D`,
	`t1`.`F`
FROM
	`MidpointValues` `t1`

