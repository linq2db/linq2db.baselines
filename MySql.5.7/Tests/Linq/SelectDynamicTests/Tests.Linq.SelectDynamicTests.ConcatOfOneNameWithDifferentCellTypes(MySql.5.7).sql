-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`Usd`,
	`x`.`Id`,
	CAST(NULL AS SIGNED)
FROM
	`Amounts` `x`
WHERE
	`x`.`Id` = 1
UNION ALL
SELECT
	CAST(NULL AS DECIMAL(29, 10)),
	`x_1`.`Id`,
	`x_1`.`Id`
FROM
	`Amounts` `x_1`
WHERE
	`x_1`.`Id` = 2

