Parameters:
@__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT `o`.`OrderID`, `o`.`CustomerID`, `o`.`EmployeeID`, `o`.`Freight`, `o`.`IsDeleted`, `o`.`OrderDate`, `o`.`RequiredDate`, `o`.`ShipAddress`, `o`.`ShipCity`, `o`.`ShipCountry`, `o`.`ShipName`, `o`.`ShipPostalCode`, `o`.`ShipRegion`, `o`.`ShipVia`, `o`.`ShippedDate`, `s`.`OrderID`, `s`.`ProductID`, `s`.`Discount`, `s`.`IsDeleted`, `s`.`Quantity`, `s`.`UnitPrice`, `s`.`ProductID0`, `s`.`CategoryID`, `s`.`Discontinued`, `s`.`IsDeleted0`, `s`.`ProductName`, `s`.`QuantityPerUnit`, `s`.`ReorderLevel`, `s`.`SupplierID`, `s`.`UnitPrice0`, `s`.`UnitsInStock`, `s`.`UnitsOnOrder`, `s`.`OrderID0`, `s`.`ProductID1`, `s`.`Discount0`, `s`.`IsDeleted1`, `s`.`Quantity0`, `s`.`UnitPrice1`
FROM `Orders` AS `o`
LEFT JOIN (
    SELECT `o0`.`OrderID`, `o0`.`ProductID`, `o0`.`Discount`, `o0`.`IsDeleted`, `o0`.`Quantity`, `o0`.`UnitPrice`, `p0`.`ProductID` AS `ProductID0`, `p0`.`CategoryID`, `p0`.`Discontinued`, `p0`.`IsDeleted` AS `IsDeleted0`, `p0`.`ProductName`, `p0`.`QuantityPerUnit`, `p0`.`ReorderLevel`, `p0`.`SupplierID`, `p0`.`UnitPrice` AS `UnitPrice0`, `p0`.`UnitsInStock`, `p0`.`UnitsOnOrder`, `o2`.`OrderID` AS `OrderID0`, `o2`.`ProductID` AS `ProductID1`, `o2`.`Discount` AS `Discount0`, `o2`.`IsDeleted` AS `IsDeleted1`, `o2`.`Quantity` AS `Quantity0`, `o2`.`UnitPrice` AS `UnitPrice1`
    FROM `Order Details` AS `o0`
    INNER JOIN (
        SELECT `p`.`ProductID`, `p`.`CategoryID`, `p`.`Discontinued`, `p`.`IsDeleted`, `p`.`ProductName`, `p`.`QuantityPerUnit`, `p`.`ReorderLevel`, `p`.`SupplierID`, `p`.`UnitPrice`, `p`.`UnitsInStock`, `p`.`UnitsOnOrder`
        FROM `Products` AS `p`
        WHERE (@__ef_filter__p_2 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)
    ) AS `p0` ON `o0`.`ProductID` = `p0`.`ProductID`
    LEFT JOIN (
        SELECT `o1`.`OrderID`, `o1`.`ProductID`, `o1`.`Discount`, `o1`.`IsDeleted`, `o1`.`Quantity`, `o1`.`UnitPrice`
        FROM `Order Details` AS `o1`
        WHERE (@__ef_filter__p_1 OR NOT (`o1`.`IsDeleted`)) OR NOT (`o1`.`IsDeleted`)
    ) AS `o2` ON `p0`.`ProductID` = `o2`.`ProductID`
    WHERE (@__ef_filter__p_1 OR NOT (`o0`.`IsDeleted`)) OR NOT (`o0`.`IsDeleted`)
) AS `s` ON `o`.`OrderID` = `s`.`OrderID`
WHERE (@__ef_filter__p_0 OR NOT (`o`.`IsDeleted`)) OR NOT (`o`.`IsDeleted`)
ORDER BY `o`.`OrderID`, `s`.`OrderID`, `s`.`ProductID`, `s`.`ProductID0`, `s`.`OrderID0`


