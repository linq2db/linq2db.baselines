﻿Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT "o"."OrderID", "o1"."OrderID", "o1"."ProductID", "p0"."ProductID", "o3"."OrderId", "o3"."ProductId", "o3"."Quantity", "o1"."Quantity", "p0"."ProductName"
FROM "Orders" AS "o"
INNER JOIN (
    SELECT "o0"."OrderID", "o0"."ProductID", "o0"."Quantity"
    FROM "Order Details" AS "o0"
    WHERE @__ef_filter__p_1 OR NOT ("o0"."IsDeleted") OR NOT ("o0"."IsDeleted")
) AS "o1" ON "o"."OrderID" = "o1"."OrderID"
INNER JOIN (
    SELECT "p"."ProductID", "p"."ProductName"
    FROM "Products" AS "p"
    WHERE @__ef_filter__p_2 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")
) AS "p0" ON "o1"."ProductID" = "p0"."ProductID"
LEFT JOIN (
    SELECT "o2"."OrderID" AS "OrderId", "o2"."ProductID" AS "ProductId", "o2"."Quantity"
    FROM "Order Details" AS "o2"
    WHERE @__ef_filter__p_1 OR NOT ("o2"."IsDeleted") OR NOT ("o2"."IsDeleted")
) AS "o3" ON "p0"."ProductID" = "o3"."ProductId"
WHERE @__ef_filter__p_0 OR NOT ("o"."IsDeleted") OR NOT ("o"."IsDeleted")
ORDER BY "o"."OrderID", "o1"."OrderID", "o1"."ProductID", "p0"."ProductID", "o3"."OrderId"


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



