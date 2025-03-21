﻿-- SQLite.MS MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 2

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
WHERE
	`e`.`ProductID` > 0
ORDER BY
	`e`.`ProductID`
LIMIT @take



-- SQLite.MS MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 2

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
WHERE
	`e`.`ProductID` > 0
ORDER BY
	`e`.`ProductID`
LIMIT @take



