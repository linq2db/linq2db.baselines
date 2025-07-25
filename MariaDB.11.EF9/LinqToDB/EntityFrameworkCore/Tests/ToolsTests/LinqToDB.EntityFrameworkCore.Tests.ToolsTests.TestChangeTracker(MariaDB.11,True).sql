﻿BeginTransactionAsync(RepeatableRead)


-- MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`m_1`.`ProductId`,
	`m_1`.`OrderId`,
	`d_1`.`IsDeleted`,
	`d_1`.`OrderID`,
	`d_1`.`ProductID`,
	`d_1`.`UnitPrice`,
	`d_1`.`Quantity`,
	`d_1`.`Discount`
FROM
	(
		SELECT DISTINCT
			`a_Product`.`ProductID` as `ProductId`,
			`t1`.`OrderId`
		FROM
			(
				SELECT DISTINCT
					`e`.`OrderID` as `OrderId`
				FROM
					`Orders` `e`
				WHERE
					NOT `e`.`IsDeleted`
			) `t1`
				INNER JOIN `Order Details` `d` ON `t1`.`OrderId` = `d`.`OrderID`
				INNER JOIN `Products` `a_Product` ON `d`.`ProductID` = `a_Product`.`ProductID`
		WHERE
			NOT `a_Product`.`IsDeleted` AND NOT `d`.`IsDeleted`
	) `m_1`
		INNER JOIN `Order Details` `d_1` ON `m_1`.`ProductId` = `d_1`.`ProductID`
WHERE
	NOT `d_1`.`IsDeleted`



-- MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`m_1`.`OrderID`,
	`d`.`IsDeleted`,
	`d`.`OrderID`,
	`d`.`ProductID`,
	`d`.`UnitPrice`,
	`d`.`Quantity`,
	`d`.`Discount`,
	`a_Product`.`IsDeleted`,
	`a_Product`.`ProductID`,
	`a_Product`.`ProductName`,
	`a_Product`.`SupplierID`,
	`a_Product`.`CategoryID`,
	`a_Product`.`QuantityPerUnit`,
	`a_Product`.`UnitPrice`,
	`a_Product`.`UnitsInStock`,
	`a_Product`.`UnitsOnOrder`,
	`a_Product`.`ReorderLevel`,
	`a_Product`.`Discontinued`
FROM
	`Orders` `m_1`
		INNER JOIN `Order Details` `d` ON `m_1`.`OrderID` = `d`.`OrderID`
		INNER JOIN `Products` `a_Product` ON `d`.`ProductID` = `a_Product`.`ProductID`
WHERE
	NOT `m_1`.`IsDeleted` AND NOT `a_Product`.`IsDeleted` AND
	NOT `d`.`IsDeleted`



DisposeTransactionAsync


-- MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`e`.`IsDeleted`,
	`e`.`OrderID`,
	`e`.`CustomerID`,
	`e`.`EmployeeID`,
	`e`.`OrderDate`,
	`e`.`RequiredDate`,
	`e`.`ShippedDate`,
	`e`.`ShipVia`,
	`e`.`Freight`,
	`e`.`ShipName`,
	`e`.`ShipAddress`,
	`e`.`ShipCity`,
	`e`.`ShipRegion`,
	`e`.`ShipPostalCode`,
	`e`.`ShipCountry`
FROM
	`Orders` `e`
WHERE
	NOT `e`.`IsDeleted`



Parameters:
@p1='?' (DbType = Int32), @p2='?' (DbType = Int32), @p0='?' (DbType = Decimal)

SET AUTOCOMMIT = 1;
UPDATE `Order Details` SET `UnitPrice` = @p0
WHERE `OrderID` = @p1 AND `ProductID` = @p2;
SELECT ROW_COUNT();


