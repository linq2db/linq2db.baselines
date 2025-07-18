﻿Parameters:
@__ef_filter__p_1='?', @__ef_filter__p_2='?', @__ef_filter__p_0='?'

SELECT "t"."OrderID", "t"."ProductID", "t"."Quantity", "t0"."ProductID", "t0"."ProductName", "o"."OrderID", "t1"."OrderID", "t1"."ProductID", "t1"."Quantity"
FROM "Orders" AS "o"
INNER JOIN (
    SELECT "o0"."OrderID", "o0"."ProductID", "o0"."Discount", "o0"."IsDeleted", "o0"."Quantity", "o0"."UnitPrice"
    FROM "Order Details" AS "o0"
    WHERE @__ef_filter__p_1 OR NOT ("o0"."IsDeleted")
) AS "t" ON "o"."OrderID" = "t"."OrderID"
INNER JOIN (
    SELECT "p"."ProductID", "p"."CategoryID", "p"."Discontinued", "p"."IsDeleted", "p"."ProductName", "p"."QuantityPerUnit", "p"."ReorderLevel", "p"."SupplierID", "p"."UnitPrice", "p"."UnitsInStock", "p"."UnitsOnOrder"
    FROM "Products" AS "p"
    WHERE @__ef_filter__p_2 OR NOT ("p"."IsDeleted")
) AS "t0" ON "t"."ProductID" = "t0"."ProductID"
LEFT JOIN (
    SELECT "o1"."OrderID", "o1"."ProductID", "o1"."Quantity"
    FROM "Order Details" AS "o1"
    WHERE @__ef_filter__p_1 OR NOT ("o1"."IsDeleted")
) AS "t1" ON "t0"."ProductID" = "t1"."ProductID"
WHERE @__ef_filter__p_0 OR NOT ("o"."IsDeleted")
ORDER BY "o"."OrderID", "t"."OrderID", "t"."ProductID", "t0"."ProductID", "t1"."OrderID", "t1"."ProductID"


BeginTransaction(Serializable)


-- SQLite.MS SQLite

SELECT
	[m_1].[ProductId],
	[d].[OrderID],
	[d].[ProductID],
	[d].[Quantity]
FROM
	(
		SELECT DISTINCT
			[a_Product].[ProductID] as [ProductId]
		FROM
			[Orders] [e]
				INNER JOIN [Order Details] [od] ON [e].[OrderID] = [od].[OrderID]
				INNER JOIN [Products] [a_Product] ON [od].[ProductID] = [a_Product].[ProductID]
	) [m_1]
		INNER JOIN [Order Details] [d] ON [m_1].[ProductId] = [d].[ProductID]



DisposeTransaction


-- SQLite.MS SQLite

SELECT
	[a_Product].[ProductID],
	[od].[OrderID],
	[od].[ProductID],
	[od].[Quantity],
	[a_Product].[ProductName]
FROM
	[Orders] [o]
		INNER JOIN [Order Details] [od] ON [o].[OrderID] = [od].[OrderID]
		INNER JOIN [Products] [a_Product] ON [od].[ProductID] = [a_Product].[ProductID]



