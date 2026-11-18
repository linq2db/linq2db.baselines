-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	CAST(CAST(Floor(`r`.`F`) AS SIGNED) AS DECIMAL(29, 10))
FROM
	`DoubleValue` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`F`
FROM
	`DoubleValue` `t1`

