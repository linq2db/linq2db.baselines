-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`Id`,
	`x`.`Flag`
FROM
	`ConvertedFlagRow` `x`
UNION
SELECT
	`x_1`.`Id`,
	CAST(NULL AS CHAR)
FROM
	`ConvertedFlagRow` `x_1`

