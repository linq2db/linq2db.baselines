-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`item_1`.`Id`,
	`stock_1`.`TotalAvailable`
FROM
	`Issue4458Item` `item_1`
		LEFT JOIN (
			SELECT
				SUM(`stock`.`QuantityAvailable`) as `TotalAvailable`,
				`stock`.`ItemId`
			FROM
				`WarehouseStock` `stock`
			GROUP BY
				`stock`.`ItemId`
		) `stock_1` ON `stock_1`.`ItemId` = `item_1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`
FROM
	`Issue4458Item` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ItemId`,
	`t1`.`QuantityAvailable`,
	`t1`.`WarehouseId`
FROM
	`WarehouseStock` `t1`

