-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`Id`,
	CONCAT('Артикул ', `p`.`Sku`)
FROM
	`ConcatProduct` `p`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

