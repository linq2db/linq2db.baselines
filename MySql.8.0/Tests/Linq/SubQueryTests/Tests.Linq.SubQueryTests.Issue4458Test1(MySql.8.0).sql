-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`item_1`.`Id`,
	(
		SELECT
			SUM(`stock`.`QuantityAvailable`)
		FROM
			`WarehouseStock` `stock`
		WHERE
			`stock`.`ItemId` = `item_1`.`Id`
		GROUP BY
			`stock`.`ItemId`
	)
FROM
	`Issue4458Item` `item_1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Issue4458Item` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ItemId`,
	`t1`.`QuantityAvailable`,
	`t1`.`WarehouseId`
FROM
	`WarehouseStock` `t1`

