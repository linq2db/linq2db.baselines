Parameters:
@__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean)

SELECT [p].[ProductName], [p].[ProductID], [s1].[Discount], [s1].[OrderID], [s1].[CustomerID], [s1].[EmployeeID], [s1].[Freight], [s1].[IsDeleted], [s1].[OrderDate], [s1].[RequiredDate], [s1].[ShipAddress], [s1].[ShipCity], [s1].[ShipCountry], [s1].[ShipName], [s1].[ShipPostalCode], [s1].[ShipRegion], [s1].[ShipVia], [s1].[ShippedDate], [s1].[OrderID0], [s1].[ProductID], [s1].[ProductID0], [s1].[SupplierID], [s1].[ProductID1], [s1].[CategoryID], [s1].[Discontinued], [s1].[IsDeleted0], [s1].[PeriodEnd], [s1].[PeriodStart], [s1].[ProductName], [s1].[QuantityPerUnit], [s1].[ReorderLevel], [s1].[SupplierID0], [s1].[UnitPrice], [s1].[UnitsInStock], [s1].[UnitsOnOrder]
FROM [Products] AS [p]
LEFT JOIN (
    SELECT [o].[Discount], [o1].[OrderID], [o1].[CustomerID], [o1].[EmployeeID], [o1].[Freight], [o1].[IsDeleted], [o1].[OrderDate], [o1].[RequiredDate], [o1].[ShipAddress], [o1].[ShipCity], [o1].[ShipCountry], [o1].[ShipName], [o1].[ShipPostalCode], [o1].[ShipRegion], [o1].[ShipVia], [o1].[ShippedDate], [o].[OrderID] AS [OrderID0], [o].[ProductID], [p1].[ProductID] AS [ProductID0], [s0].[SupplierID], [p3].[ProductID] AS [ProductID1], [p3].[CategoryID], [p3].[Discontinued], [p3].[IsDeleted] AS [IsDeleted0], [p3].[PeriodEnd], [p3].[PeriodStart], [p3].[ProductName], [p3].[QuantityPerUnit], [p3].[ReorderLevel], [p3].[SupplierID] AS [SupplierID0], [p3].[UnitPrice], [p3].[UnitsInStock], [p3].[UnitsOnOrder]
    FROM [Order Details] AS [o]
    INNER JOIN (
        SELECT [o0].[OrderID], [o0].[CustomerID], [o0].[EmployeeID], [o0].[Freight], [o0].[IsDeleted], [o0].[OrderDate], [o0].[RequiredDate], [o0].[ShipAddress], [o0].[ShipCity], [o0].[ShipCountry], [o0].[ShipName], [o0].[ShipPostalCode], [o0].[ShipRegion], [o0].[ShipVia], [o0].[ShippedDate]
        FROM [Orders] AS [o0]
        WHERE @__ef_filter__p_2 = CAST(1 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit)
    ) AS [o1] ON [o].[OrderID] = [o1].[OrderID]
    INNER JOIN (
        SELECT [p0].[ProductID], [p0].[SupplierID]
        FROM [Products] AS [p0]
        WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [p0].[IsDeleted] = CAST(0 AS bit) OR [p0].[IsDeleted] = CAST(0 AS bit)
    ) AS [p1] ON [o].[ProductID] = [p1].[ProductID]
    LEFT JOIN (
        SELECT [s].[SupplierID]
        FROM [Suppliers] AS [s]
        WHERE @__ef_filter__p_3 = CAST(1 AS bit) OR [s].[IsDeleted] = CAST(0 AS bit) OR [s].[IsDeleted] = CAST(0 AS bit)
    ) AS [s0] ON [p1].[SupplierID] = [s0].[SupplierID]
    LEFT JOIN (
        SELECT [p2].[ProductID], [p2].[CategoryID], [p2].[Discontinued], [p2].[IsDeleted], [p2].[PeriodEnd], [p2].[PeriodStart], [p2].[ProductName], [p2].[QuantityPerUnit], [p2].[ReorderLevel], [p2].[SupplierID], [p2].[UnitPrice], [p2].[UnitsInStock], [p2].[UnitsOnOrder]
        FROM [Products] AS [p2]
        WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [p2].[IsDeleted] = CAST(0 AS bit) OR [p2].[IsDeleted] = CAST(0 AS bit)
    ) AS [p3] ON [s0].[SupplierID] = [p3].[SupplierID]
    WHERE @__ef_filter__p_1 = CAST(1 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit)
) AS [s1] ON [p].[ProductID] = [s1].[ProductID]
WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)
ORDER BY [p].[ProductID], [s1].[OrderID0], [s1].[ProductID], [s1].[OrderID], [s1].[ProductID0], [s1].[SupplierID]


BeginTransactionAsync(RepeatableRead)


-- SqlServer.2022 (asynchronously)

SELECT
	[m_1].[SupplierId],
	[m_1].[ProductId],
	[d_1].[IsDeleted],
	[d_1].[ProductID],
	[d_1].[ProductName],
	[d_1].[SupplierID],
	[d_1].[CategoryID],
	[d_1].[QuantityPerUnit],
	[d_1].[UnitPrice],
	[d_1].[UnitsInStock],
	[d_1].[UnitsOnOrder],
	[d_1].[ReorderLevel],
	[d_1].[Discontinued]
FROM
	(
		SELECT DISTINCT
			[a_Supplier].[SupplierID] as [SupplierId],
			[t1].[ProductId]
		FROM
			(
				SELECT DISTINCT
					[e].[ProductID] as [ProductId]
				FROM
					[Products] [e]
				WHERE
					[e].[IsDeleted] = 0
			) [t1]
				INNER JOIN [Order Details] [d] ON [t1].[ProductId] = [d].[ProductID]
				INNER JOIN [Orders] [e_1] ON [d].[OrderID] = [e_1].[OrderID]
				INNER JOIN [Products] [a_Product] ON [d].[ProductID] = [a_Product].[ProductID]
				LEFT JOIN [Suppliers] [a_Supplier] ON [a_Product].[SupplierID] = [a_Supplier].[SupplierID] AND [a_Supplier].[IsDeleted] = 0
		WHERE
			[e_1].[IsDeleted] = 0 AND [a_Product].[IsDeleted] = 0 AND
			[d].[IsDeleted] = 0
	) [m_1]
		INNER JOIN [Products] [d_1] ON [m_1].[SupplierId] = [d_1].[SupplierID] OR [m_1].[SupplierId] IS NULL AND [d_1].[SupplierID] IS NULL
WHERE
	[d_1].[IsDeleted] = 0



-- SqlServer.2022 (asynchronously)

SELECT
	[m_1].[ProductID],
	[d].[Discount],
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
	[e].[ShipCountry],
	[a_Supplier].[SupplierID]
FROM
	[Products] [m_1]
		INNER JOIN [Order Details] [d] ON [m_1].[ProductID] = [d].[ProductID]
		INNER JOIN [Orders] [e] ON [d].[OrderID] = [e].[OrderID]
		LEFT JOIN [Suppliers] [a_Supplier] ON [m_1].[SupplierID] = [a_Supplier].[SupplierID] AND [a_Supplier].[IsDeleted] = 0
WHERE
	[m_1].[IsDeleted] = 0 AND [e].[IsDeleted] = 0 AND [d].[IsDeleted] = 0



DisposeTransactionAsync


-- SqlServer.2022 (asynchronously)

SELECT
	[p].[ProductName],
	[p].[ProductID]
FROM
	[Products] [p]
WHERE
	[p].[IsDeleted] = 0



