-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(NULL AS SIGNED),
	`x`.`Id`,
	`x`.`Flag`
FROM
	`ConvertedFlagRow` `x`
UNION ALL
SELECT
	CAST(1 AS SIGNED),
	`x_1`.`Id`,
	CAST(NULL AS CHAR)
FROM
	`ConvertedFlagRow` `x_1`

