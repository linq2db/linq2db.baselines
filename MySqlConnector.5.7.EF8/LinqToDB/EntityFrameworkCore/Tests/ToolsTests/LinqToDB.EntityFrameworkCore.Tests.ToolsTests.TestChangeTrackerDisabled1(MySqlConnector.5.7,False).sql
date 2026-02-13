

-- MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`ProductId`,
	`m_1`.`Item1`,
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
			`e`.`OrderID` as `Item1`
		FROM
			`Orders` `e`
				INNER JOIN `Order Details` `d` ON `e`.`OrderID` = `d`.`OrderID`
				INNER JOIN `Products` `a_Product` ON `d`.`ProductID` = `a_Product`.`ProductID`
	) `m_1`
		INNER JOIN `Order Details` `d_1` ON `m_1`.`ProductId` = `d_1`.`ProductID`



-- MySql.5.7.MySqlConnector MySql57

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





-- MySql.5.7.MySqlConnector MySql57

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



