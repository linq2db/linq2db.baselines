Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_4='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_5='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT `e0`.`EmployeeID`, `e0`.`Address`, `e0`.`BirthDate`, `e0`.`City`, `e0`.`Country`, `e0`.`Extension`, `e0`.`FirstName`, `e0`.`HireDate`, `e0`.`HomePhone`, `e0`.`IsDeleted`, `e0`.`LastName`, `e0`.`Notes`, `e0`.`Photo`, `e0`.`PhotoPath`, `e0`.`PostalCode`, `e0`.`Region`, `e0`.`ReportsTo`, `e0`.`Title`, `e0`.`TitleOfCourtesy`, `o`.`OrderID`, `s`.`EmployeeID`, `s`.`TerritoryID`, `s`.`IsDeleted`, `s`.`TerritoryID0`, `s`.`IsDeleted0`, `s`.`RegionID`, `s`.`TerritoryDescription`, `s0`.`OrderID`, `s0`.`ProductID`, `s0`.`Discount`, `s0`.`IsDeleted`, `s0`.`Quantity`, `s0`.`UnitPrice`, `s0`.`ProductID0`, `s0`.`CategoryID`, `s0`.`Discontinued`, `s0`.`IsDeleted0`, `s0`.`ProductName`, `s0`.`QuantityPerUnit`, `s0`.`ReorderLevel`, `s0`.`SupplierID`, `s0`.`UnitPrice0`, `s0`.`UnitsInStock`, `s0`.`UnitsOnOrder`
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


