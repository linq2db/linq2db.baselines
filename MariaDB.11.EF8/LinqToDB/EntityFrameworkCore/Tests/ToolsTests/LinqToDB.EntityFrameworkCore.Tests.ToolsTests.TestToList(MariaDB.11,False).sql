﻿BeginTransaction(RepeatableRead)


-- MariaDB.10.MySqlConnector MySql

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



DisposeTransaction


-- MariaDB.10.MySqlConnector MySql

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



