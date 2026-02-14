-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`product_1`.`Id`,
	(
		SELECT
			SUM(`t1`.`OnOrder`) as `OnOrder`
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Product` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`ProductId`,
	`t1`.`Quantity`
FROM
	`PurchaseOrderLineItem` `t1`

