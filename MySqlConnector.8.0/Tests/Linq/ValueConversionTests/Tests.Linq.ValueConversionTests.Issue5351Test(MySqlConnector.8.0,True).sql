-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`Issue5351Table` `x`
SET
	`x`.`Test` = NULL
WHERE
	`x`.`Id` = 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`Test`
FROM
	`Issue5351Table` `x`
WHERE
	`x`.`Id` = 1
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`Issue5351Table` `x`
SET
	`x`.`Test` = 'X'
WHERE
	`x`.`Id` = 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`Test`
FROM
	`Issue5351Table` `x`
WHERE
	`x`.`Id` = 2
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`Test`
FROM
	`Issue5351Table` `x`
WHERE
	`x`.`Test` = 'X'

