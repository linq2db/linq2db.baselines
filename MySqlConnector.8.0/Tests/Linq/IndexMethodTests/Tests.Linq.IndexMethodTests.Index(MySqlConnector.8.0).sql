-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	ROW_NUMBER() OVER (ORDER BY `item_1`.`Id`) - 1,
	`item_1`.`Id`,
	`item_1`.`TestId`
FROM
	`TestTable` `item_1`
ORDER BY
	`item_1`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`TestId`
FROM
	`TestTable` `t1`

