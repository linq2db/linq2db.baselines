SELECT "p"."ProductID", "p"."CategoryID", "p"."Discontinued", "p"."IsDeleted", "p"."ProductName", "p"."QuantityPerUnit", "p"."ReorderLevel", "p"."SupplierID", "p"."UnitPrice", "p"."UnitsInStock", "p"."UnitsOnOrder", "o"."OrderID", "o"."ProductID", "o"."Discount", "o"."IsDeleted", "o"."Quantity", "o"."UnitPrice"
FROM "Products" AS "p"
INNER JOIN "Order Details" AS "o" ON "p"."ProductID" = "o"."ProductID"


-- SQLite.MS SQLite

SELECT
	[p].[IsDeleted],
	[p].[ProductID],
	[p].[ProductName],
	[p].[SupplierID],
	[p].[CategoryID],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued],
	[d].[IsDeleted],
	[d].[OrderID],
	[d].[ProductID],
	[d].[UnitPrice],
	[d].[Quantity],
	[d].[Discount]
FROM
	[Products] [p]
		INNER JOIN [Order Details] [d] ON [p].[ProductID] = [d].[ProductID]
WHERE
	NOT [d].[IsDeleted]



Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT "p"."ProductID", "p"."CategoryID", "p"."Discontinued", "p"."IsDeleted", "p"."ProductName", "p"."QuantityPerUnit", "p"."ReorderLevel", "p"."SupplierID", "p"."UnitPrice", "p"."UnitsInStock", "p"."UnitsOnOrder", "t"."OrderID", "t"."ProductID", "t"."Discount", "t"."IsDeleted", "t"."Quantity", "t"."UnitPrice"
FROM "Products" AS "p"
INNER JOIN (
    SELECT "o"."OrderID", "o"."ProductID", "o"."Discount", "o"."IsDeleted", "o"."Quantity", "o"."UnitPrice"
    FROM "Order Details" AS "o"
    WHERE @__ef_filter__p_1 OR NOT ("o"."IsDeleted") OR NOT ("o"."IsDeleted")
) AS "t" ON "p"."ProductID" = "t"."ProductID"
WHERE @__ef_filter__p_0 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")


-- SQLite.MS SQLite

SELECT
	[p].[IsDeleted],
	[p].[ProductID],
	[p].[ProductName],
	[p].[SupplierID],
	[p].[CategoryID],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued],
	[d].[IsDeleted],
	[d].[OrderID],
	[d].[ProductID],
	[d].[UnitPrice],
	[d].[Quantity],
	[d].[Discount]
FROM
	[Products] [p]
		INNER JOIN [Order Details] [d] ON [p].[ProductID] = [d].[ProductID]
WHERE
	NOT [p].[IsDeleted] AND NOT [d].[IsDeleted]



