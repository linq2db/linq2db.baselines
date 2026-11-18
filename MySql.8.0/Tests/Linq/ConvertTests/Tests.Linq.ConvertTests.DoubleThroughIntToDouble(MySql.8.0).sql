-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`,
	CAST(CAST(Floor(`r`.`F`) AS SIGNED) AS DOUBLE)
FROM
	`DoubleValue` `r`
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`F`
FROM
	`DoubleValue` `t1`

