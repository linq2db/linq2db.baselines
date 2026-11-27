-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`Id`,
	`x`.`Usd`,
	CAST(NULL AS DECIMAL(29, 10))
FROM
	`Amounts` `x`
WHERE
	`x`.`Id` = 1
UNION ALL
SELECT
	`x_1`.`Id`,
	CAST(NULL AS DECIMAL(29, 10)),
	`x_1`.`Eur`
FROM
	`Amounts` `x_1`
WHERE
	`x_1`.`Id` = 2

