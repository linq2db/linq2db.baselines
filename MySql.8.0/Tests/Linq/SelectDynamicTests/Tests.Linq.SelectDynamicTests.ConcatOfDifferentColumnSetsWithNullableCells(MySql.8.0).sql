-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`Id`,
	`x`.`Usd`,
	NULL
FROM
	`Amounts` `x`
WHERE
	`x`.`Id` = 1
UNION ALL
SELECT
	`x_1`.`Id`,
	CAST(NULL AS DECIMAL(29, 10)),
	`x_1`.`Usd` * 2
FROM
	`Amounts` `x_1`
WHERE
	`x_1`.`Id` = 2

