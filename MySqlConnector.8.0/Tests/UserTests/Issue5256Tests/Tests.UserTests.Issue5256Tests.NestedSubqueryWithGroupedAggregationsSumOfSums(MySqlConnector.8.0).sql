-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`product_1`.`Id`,
	(
		SELECT
			SUM(`t1`.`OnOrder`)
		FROM
			(
				SELECT
					SUM(CAST(`testGroup`.`Quantity` AS DECIMAL(29, 10))) as `OnOrder`
				FROM
					`PurchaseOrderLineItem` `testGroup`
				GROUP BY
					`testGroup`.`Id`
			) `t1`
	)
FROM
	`Product` `product_1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Product` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`ProductId`,
	`t1`.`Quantity`
FROM
	`PurchaseOrderLineItem` `t1`

