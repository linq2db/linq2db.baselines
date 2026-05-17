-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`Value`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1
LIMIT 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`Value`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1 AND `x`.`Value` = 100
LIMIT 1

