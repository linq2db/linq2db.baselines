Parameters:
@ef_filter__p1='?' (DbType = Boolean), @p='?' (DbType = Int32)

SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder"
FROM "Products" AS p
WHERE (@ef_filter__p1 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductID" > 0
ORDER BY p."ProductID"
LIMIT @p


