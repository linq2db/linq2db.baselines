﻿SELECT `p`.`ProductID`, `p`.`CategoryID`, `p`.`Discontinued`, `p`.`IsDeleted`, `p`.`ProductName`, `p`.`QuantityPerUnit`, `p`.`ReorderLevel`, `p`.`SupplierID`, `p`.`UnitPrice`, `p`.`UnitsInStock`, `p`.`UnitsOnOrder`, `o`.`OrderID`, `o`.`ProductID`, `o`.`Discount`, `o`.`IsDeleted`, `o`.`Quantity`, `o`.`UnitPrice`
FROM `Products` AS `p`
INNER JOIN `Order Details` AS `o` ON `p`.`ProductID` = `o`.`ProductID`


Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT `p`.`ProductID`, `p`.`CategoryID`, `p`.`Discontinued`, `p`.`IsDeleted`, `p`.`ProductName`, `p`.`QuantityPerUnit`, `p`.`ReorderLevel`, `p`.`SupplierID`, `p`.`UnitPrice`, `p`.`UnitsInStock`, `p`.`UnitsOnOrder`, `o0`.`OrderID`, `o0`.`ProductID`, `o0`.`Discount`, `o0`.`IsDeleted`, `o0`.`Quantity`, `o0`.`UnitPrice`
FROM `Products` AS `p`
INNER JOIN (
    SELECT `o`.`OrderID`, `o`.`ProductID`, `o`.`Discount`, `o`.`IsDeleted`, `o`.`Quantity`, `o`.`UnitPrice`
    FROM `Order Details` AS `o`
    WHERE (@__ef_filter__p_1 OR NOT (`o`.`IsDeleted`)) OR NOT (`o`.`IsDeleted`)
) AS `o0` ON `p`.`ProductID` = `o0`.`ProductID`
WHERE (@__ef_filter__p_0 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)


