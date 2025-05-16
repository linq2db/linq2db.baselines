Parameters:
@__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT "o"."OrderID", "o"."CustomerID", "o"."EmployeeID", "o"."Freight", "o"."IsDeleted", "o"."OrderDate", "o"."RequiredDate", "o"."ShipAddress", "o"."ShipCity", "o"."ShipCountry", "o"."ShipName", "o"."ShipPostalCode", "o"."ShipRegion", "o"."ShipVia", "o"."ShippedDate", "t1"."OrderID", "t1"."ProductID", "t1"."Discount", "t1"."IsDeleted", "t1"."Quantity", "t1"."UnitPrice", "t1"."ProductID0", "t1"."CategoryID", "t1"."Discontinued", "t1"."IsDeleted0", "t1"."ProductName", "t1"."QuantityPerUnit", "t1"."ReorderLevel", "t1"."SupplierID", "t1"."UnitPrice0", "t1"."UnitsInStock", "t1"."UnitsOnOrder", "t1"."OrderID0", "t1"."ProductID1", "t1"."Discount0", "t1"."IsDeleted1", "t1"."Quantity0", "t1"."UnitPrice1"
FROM "Orders" AS "o"
LEFT JOIN (
    SELECT "o0"."OrderID", "o0"."ProductID", "o0"."Discount", "o0"."IsDeleted", "o0"."Quantity", "o0"."UnitPrice", "t"."ProductID" AS "ProductID0", "t"."CategoryID", "t"."Discontinued", "t"."IsDeleted" AS "IsDeleted0", "t"."ProductName", "t"."QuantityPerUnit", "t"."ReorderLevel", "t"."SupplierID", "t"."UnitPrice" AS "UnitPrice0", "t"."UnitsInStock", "t"."UnitsOnOrder", "t0"."OrderID" AS "OrderID0", "t0"."ProductID" AS "ProductID1", "t0"."Discount" AS "Discount0", "t0"."IsDeleted" AS "IsDeleted1", "t0"."Quantity" AS "Quantity0", "t0"."UnitPrice" AS "UnitPrice1"
    FROM "Order Details" AS "o0"
    INNER JOIN (
        SELECT "p"."ProductID", "p"."CategoryID", "p"."Discontinued", "p"."IsDeleted", "p"."ProductName", "p"."QuantityPerUnit", "p"."ReorderLevel", "p"."SupplierID", "p"."UnitPrice", "p"."UnitsInStock", "p"."UnitsOnOrder"
        FROM "Products" AS "p"
        WHERE @__ef_filter__p_2 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")
    ) AS "t" ON "o0"."ProductID" = "t"."ProductID"
    LEFT JOIN (
        SELECT "o1"."OrderID", "o1"."ProductID", "o1"."Discount", "o1"."IsDeleted", "o1"."Quantity", "o1"."UnitPrice"
        FROM "Order Details" AS "o1"
        WHERE @__ef_filter__p_1 OR NOT ("o1"."IsDeleted") OR NOT ("o1"."IsDeleted")
    ) AS "t0" ON "t"."ProductID" = "t0"."ProductID"
    WHERE @__ef_filter__p_1 OR NOT ("o0"."IsDeleted") OR NOT ("o0"."IsDeleted")
) AS "t1" ON "o"."OrderID" = "t1"."OrderID"
WHERE @__ef_filter__p_0 OR NOT ("o"."IsDeleted") OR NOT ("o"."IsDeleted")
ORDER BY "o"."OrderID", "t1"."OrderID", "t1"."ProductID", "t1"."ProductID0", "t1"."OrderID0"


BeginTransactionAsync(Serializable)


-- SQLite.MS SQLite (asynchronously)

SELECT
	[m_1].[ProductId],
	[m_1].[OrderId],
	[d_1].[IsDeleted],
	[d_1].[OrderID],
	[d_1].[ProductID],
	[d_1].[UnitPrice],
	[d_1].[Quantity],
	[d_1].[Discount]
FROM
	(
		SELECT DISTINCT
			[a_Product].[ProductID] as [ProductId],
			[t1].[OrderId]
		FROM
			(
				SELECT DISTINCT
					[e].[OrderID] as [OrderId]
				FROM
					[Orders] [e]
			) [t1]
				INNER JOIN [Order Details] [d] ON [t1].[OrderId] = [d].[OrderID]
				INNER JOIN [Products] [a_Product] ON [d].[ProductID] = [a_Product].[ProductID]
	) [m_1]
		INNER JOIN [Order Details] [d_1] ON [m_1].[ProductId] = [d_1].[ProductID]



-- SQLite.MS SQLite (asynchronously)

SELECT
	[m_1].[OrderID],
	[d].[IsDeleted],
	[d].[OrderID],
	[d].[ProductID],
	[d].[UnitPrice],
	[d].[Quantity],
	[d].[Discount],
	[a_Product].[IsDeleted],
	[a_Product].[ProductID],
	[a_Product].[ProductName],
	[a_Product].[SupplierID],
	[a_Product].[CategoryID],
	[a_Product].[QuantityPerUnit],
	[a_Product].[UnitPrice],
	[a_Product].[UnitsInStock],
	[a_Product].[UnitsOnOrder],
	[a_Product].[ReorderLevel],
	[a_Product].[Discontinued]
FROM
	[Orders] [m_1]
		INNER JOIN [Order Details] [d] ON [m_1].[OrderID] = [d].[OrderID]
		INNER JOIN [Products] [a_Product] ON [d].[ProductID] = [a_Product].[ProductID]



DisposeTransactionAsync


-- SQLite.MS SQLite (asynchronously)

SELECT
	[e].[IsDeleted],
	[e].[OrderID],
	[e].[CustomerID],
	[e].[EmployeeID],
	[e].[OrderDate],
	[e].[RequiredDate],
	[e].[ShippedDate],
	[e].[ShipVia],
	[e].[Freight],
	[e].[ShipName],
	[e].[ShipAddress],
	[e].[ShipCity],
	[e].[ShipRegion],
	[e].[ShipPostalCode],
	[e].[ShipCountry]
FROM
	[Orders] [e]



