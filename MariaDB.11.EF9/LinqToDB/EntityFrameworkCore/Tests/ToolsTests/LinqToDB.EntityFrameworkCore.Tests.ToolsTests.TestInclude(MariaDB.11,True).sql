﻿Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_4='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_5='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT `o`.`OrderID`, `o`.`CustomerID`, `o`.`EmployeeID`, `o`.`Freight`, `o`.`IsDeleted`, `o`.`OrderDate`, `o`.`RequiredDate`, `o`.`ShipAddress`, `o`.`ShipCity`, `o`.`ShipCountry`, `o`.`ShipName`, `o`.`ShipPostalCode`, `o`.`ShipRegion`, `o`.`ShipVia`, `o`.`ShippedDate`, `e0`.`EmployeeID`, `e0`.`Address`, `e0`.`BirthDate`, `e0`.`City`, `e0`.`Country`, `e0`.`Extension`, `e0`.`FirstName`, `e0`.`HireDate`, `e0`.`HomePhone`, `e0`.`IsDeleted`, `e0`.`LastName`, `e0`.`Notes`, `e0`.`Photo`, `e0`.`PhotoPath`, `e0`.`PostalCode`, `e0`.`Region`, `e0`.`ReportsTo`, `e0`.`Title`, `e0`.`TitleOfCourtesy`, `s`.`EmployeeID`, `s`.`TerritoryID`, `s`.`IsDeleted`, `s`.`TerritoryID0`, `s`.`IsDeleted0`, `s`.`RegionID`, `s`.`TerritoryDescription`, `s0`.`OrderID`, `s0`.`ProductID`, `s0`.`Discount`, `s0`.`IsDeleted`, `s0`.`Quantity`, `s0`.`UnitPrice`, `s0`.`ProductID0`, `s0`.`CategoryID`, `s0`.`Discontinued`, `s0`.`IsDeleted0`, `s0`.`ProductName`, `s0`.`QuantityPerUnit`, `s0`.`ReorderLevel`, `s0`.`SupplierID`, `s0`.`UnitPrice0`, `s0`.`UnitsInStock`, `s0`.`UnitsOnOrder`
FROM `Orders` AS `o`
LEFT JOIN (
    SELECT `e`.`EmployeeID`, `e`.`Address`, `e`.`BirthDate`, `e`.`City`, `e`.`Country`, `e`.`Extension`, `e`.`FirstName`, `e`.`HireDate`, `e`.`HomePhone`, `e`.`IsDeleted`, `e`.`LastName`, `e`.`Notes`, `e`.`Photo`, `e`.`PhotoPath`, `e`.`PostalCode`, `e`.`Region`, `e`.`ReportsTo`, `e`.`Title`, `e`.`TitleOfCourtesy`
    FROM `Employees` AS `e`
    WHERE (@__ef_filter__p_1 OR NOT (`e`.`IsDeleted`)) OR NOT (`e`.`IsDeleted`)
) AS `e0` ON `o`.`EmployeeID` = `e0`.`EmployeeID`
LEFT JOIN (
    SELECT `e1`.`EmployeeID`, `e1`.`TerritoryID`, `e1`.`IsDeleted`, `t0`.`TerritoryID` AS `TerritoryID0`, `t0`.`IsDeleted` AS `IsDeleted0`, `t0`.`RegionID`, `t0`.`TerritoryDescription`
    FROM `EmployeeTerritories` AS `e1`
    INNER JOIN (
        SELECT `t`.`TerritoryID`, `t`.`IsDeleted`, `t`.`RegionID`, `t`.`TerritoryDescription`
        FROM `Territories` AS `t`
        WHERE (@__ef_filter__p_4 OR NOT (`t`.`IsDeleted`)) OR NOT (`t`.`IsDeleted`)
    ) AS `t0` ON `e1`.`TerritoryID` = `t0`.`TerritoryID`
    WHERE (@__ef_filter__p_2 OR NOT (`e1`.`IsDeleted`)) OR NOT (`e1`.`IsDeleted`)
) AS `s` ON `e0`.`EmployeeID` = `s`.`EmployeeID`
LEFT JOIN (
    SELECT `o0`.`OrderID`, `o0`.`ProductID`, `o0`.`Discount`, `o0`.`IsDeleted`, `o0`.`Quantity`, `o0`.`UnitPrice`, `p0`.`ProductID` AS `ProductID0`, `p0`.`CategoryID`, `p0`.`Discontinued`, `p0`.`IsDeleted` AS `IsDeleted0`, `p0`.`ProductName`, `p0`.`QuantityPerUnit`, `p0`.`ReorderLevel`, `p0`.`SupplierID`, `p0`.`UnitPrice` AS `UnitPrice0`, `p0`.`UnitsInStock`, `p0`.`UnitsOnOrder`
    FROM `Order Details` AS `o0`
    INNER JOIN (
        SELECT `p`.`ProductID`, `p`.`CategoryID`, `p`.`Discontinued`, `p`.`IsDeleted`, `p`.`ProductName`, `p`.`QuantityPerUnit`, `p`.`ReorderLevel`, `p`.`SupplierID`, `p`.`UnitPrice`, `p`.`UnitsInStock`, `p`.`UnitsOnOrder`
        FROM `Products` AS `p`
        WHERE (@__ef_filter__p_5 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)
    ) AS `p0` ON `o0`.`ProductID` = `p0`.`ProductID`
    WHERE (@__ef_filter__p_3 OR NOT (`o0`.`IsDeleted`)) OR NOT (`o0`.`IsDeleted`)
) AS `s0` ON `o`.`OrderID` = `s0`.`OrderID`
WHERE (@__ef_filter__p_0 OR NOT (`o`.`IsDeleted`)) OR NOT (`o`.`IsDeleted`)
ORDER BY `o`.`OrderID`, `e0`.`EmployeeID`, `s`.`EmployeeID`, `s`.`TerritoryID`, `s`.`TerritoryID0`, `s0`.`OrderID`, `s0`.`ProductID`


BeginTransactionAsync(RepeatableRead)


-- MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`m_1`.`EmployeeId`,
	`d`.`IsDeleted`,
	`d`.`EmployeeID`,
	`d`.`TerritoryID`,
	`a_Territory`.`IsDeleted`,
	`a_Territory`.`TerritoryID`,
	`a_Territory`.`TerritoryDescription`,
	`a_Territory`.`RegionID`
FROM
	(
		SELECT DISTINCT
			`a_Employee`.`EmployeeID` as `EmployeeId`
		FROM
			`Orders` `e`
				LEFT JOIN `Employees` `a_Employee` ON `e`.`EmployeeID` = `a_Employee`.`EmployeeID` AND NOT `a_Employee`.`IsDeleted`
		WHERE
			NOT `e`.`IsDeleted`
	) `m_1`
		INNER JOIN `EmployeeTerritories` `d` ON `m_1`.`EmployeeId` = `d`.`EmployeeID`
		INNER JOIN `Territories` `a_Territory` ON `d`.`TerritoryID` = `a_Territory`.`TerritoryID`
WHERE
	NOT `a_Territory`.`IsDeleted` AND NOT `d`.`IsDeleted`



-- MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`m_1`.`OrderId`,
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
	(
		SELECT DISTINCT
			`e`.`OrderID` as `OrderId`
		FROM
			`Orders` `e`
		WHERE
			NOT `e`.`IsDeleted`
	) `m_1`
		INNER JOIN `Order Details` `d` ON `m_1`.`OrderId` = `d`.`OrderID`
		INNER JOIN `Products` `a_Product` ON `d`.`ProductID` = `a_Product`.`ProductID`
WHERE
	NOT `a_Product`.`IsDeleted` AND NOT `d`.`IsDeleted`



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
	`e`.`ShipCountry`,
	`a_Employee`.`IsDeleted`,
	`a_Employee`.`EmployeeID`,
	`a_Employee`.`LastName`,
	`a_Employee`.`FirstName`,
	`a_Employee`.`Title`,
	`a_Employee`.`TitleOfCourtesy`,
	`a_Employee`.`BirthDate`,
	`a_Employee`.`HireDate`,
	`a_Employee`.`Address`,
	`a_Employee`.`City`,
	`a_Employee`.`Region`,
	`a_Employee`.`PostalCode`,
	`a_Employee`.`Country`,
	`a_Employee`.`HomePhone`,
	`a_Employee`.`Extension`,
	`a_Employee`.`Photo`,
	`a_Employee`.`Notes`,
	`a_Employee`.`ReportsTo`,
	`a_Employee`.`PhotoPath`
FROM
	`Orders` `e`
		LEFT JOIN `Employees` `a_Employee` ON `e`.`EmployeeID` = `a_Employee`.`EmployeeID` AND NOT `a_Employee`.`IsDeleted`
WHERE
	NOT `e`.`IsDeleted`



