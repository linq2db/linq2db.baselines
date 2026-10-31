-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

