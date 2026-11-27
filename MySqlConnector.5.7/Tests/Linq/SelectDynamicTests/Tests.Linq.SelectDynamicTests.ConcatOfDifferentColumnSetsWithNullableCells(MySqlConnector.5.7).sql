-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

