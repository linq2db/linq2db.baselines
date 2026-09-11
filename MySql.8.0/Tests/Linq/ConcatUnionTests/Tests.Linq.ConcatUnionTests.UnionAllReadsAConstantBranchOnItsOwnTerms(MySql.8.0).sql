-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

