Parameters:
@__ef_filter__p_0='?' (DbType = Boolean), @__p_0='?' (DbType = Int32)

SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder"
FROM "Products" AS p
WHERE (@__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductID" > 0
ORDER BY p."ProductID"
LIMIT @__p_0


