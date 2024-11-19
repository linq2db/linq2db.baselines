﻿--  MySql.8.0.MySqlConnector MySql80

SELECT
	`e`.`IsDeleted`,
	`e`.`ProductID`,
	`e`.`ProductName`,
	`e`.`SupplierID`,
	`e`.`CategoryID`,
	`e`.`QuantityPerUnit`,
	`e`.`UnitPrice`,
	`e`.`UnitsInStock`,
	`e`.`UnitsOnOrder`,
	`e`.`ReorderLevel`,
	`e`.`Discontinued`
FROM
	`Products` `e`
		LEFT JOIN `Products` `op` ON `op`.`ProductID` <> `e`.`ProductID` AND `op`.`ProductName` = `e`.`ProductName` AND (`op`.`IsDeleted` = 0 OR `op`.`IsDeleted` = 0)
WHERE
	(`e`.`IsDeleted` = 0 OR `e`.`IsDeleted` = 0) AND `op`.`ProductID` IS NULL



