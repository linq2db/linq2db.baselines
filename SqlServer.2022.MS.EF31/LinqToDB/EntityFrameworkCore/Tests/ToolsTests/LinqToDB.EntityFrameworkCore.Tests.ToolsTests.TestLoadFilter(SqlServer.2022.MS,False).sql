Parameters:
@__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean)

SELECT [p].[ProductName], [p].[ProductID], [t3].[Discount], [t3].[OrderID], [t3].[CustomerID], [t3].[EmployeeID], [t3].[Freight], [t3].[IsDeleted], [t3].[OrderDate], [t3].[RequiredDate], [t3].[ShipAddress], [t3].[ShipCity], [t3].[ShipCountry], [t3].[ShipName], [t3].[ShipPostalCode], [t3].[ShipRegion], [t3].[ShipVia], [t3].[ShippedDate], [t3].[OrderID0], [t3].[ProductID], [t3].[ProductID0], [t3].[ProductID1], [t3].[CategoryID], [t3].[Discontinued], [t3].[IsDeleted0], [t3].[ProductName], [t3].[QuantityPerUnit], [t3].[ReorderLevel], [t3].[SupplierID], [t3].[UnitPrice], [t3].[UnitsInStock], [t3].[UnitsOnOrder]
FROM [Products] AS [p]
LEFT JOIN (
    SELECT [o].[Discount], [t].[OrderID], [t].[CustomerID], [t].[EmployeeID], [t].[Freight], [t].[IsDeleted], [t].[OrderDate], [t].[RequiredDate], [t].[ShipAddress], [t].[ShipCity], [t].[ShipCountry], [t].[ShipName], [t].[ShipPostalCode], [t].[ShipRegion], [t].[ShipVia], [t].[ShippedDate], [o].[OrderID] AS [OrderID0], [o].[ProductID], [t0].[ProductID] AS [ProductID0], [t2].[ProductID] AS [ProductID1], [t2].[CategoryID], [t2].[Discontinued], [t2].[IsDeleted] AS [IsDeleted0], [t2].[ProductName], [t2].[QuantityPerUnit], [t2].[ReorderLevel], [t2].[SupplierID], [t2].[UnitPrice], [t2].[UnitsInStock], [t2].[UnitsOnOrder]
    FROM [Order Details] AS [o]
    INNER JOIN (
        SELECT [o0].[OrderID], [o0].[CustomerID], [o0].[EmployeeID], [o0].[Freight], [o0].[IsDeleted], [o0].[OrderDate], [o0].[RequiredDate], [o0].[ShipAddress], [o0].[ShipCity], [o0].[ShipCountry], [o0].[ShipName], [o0].[ShipPostalCode], [o0].[ShipRegion], [o0].[ShipVia], [o0].[ShippedDate]
        FROM [Orders] AS [o0]
        WHERE (@__ef_filter__p_2 = CAST(1 AS bit)) OR ([o0].[IsDeleted] <> CAST(1 AS bit))
    ) AS [t] ON [o].[OrderID] = [t].[OrderID]
    INNER JOIN (
        SELECT [p0].[ProductID], [p0].[CategoryID], [p0].[Discontinued], [p0].[IsDeleted], [p0].[ProductName], [p0].[QuantityPerUnit], [p0].[ReorderLevel], [p0].[SupplierID], [p0].[UnitPrice], [p0].[UnitsInStock], [p0].[UnitsOnOrder]
        FROM [Products] AS [p0]
        WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p0].[IsDeleted] <> CAST(1 AS bit))
    ) AS [t0] ON [o].[ProductID] = [t0].[ProductID]
    LEFT JOIN (
        SELECT [s].[SupplierID], [s].[Address], [s].[City], [s].[CompanyName], [s].[ContactName], [s].[ContactTitle], [s].[Country], [s].[Fax], [s].[HomePage], [s].[IsDeleted], [s].[Phone], [s].[PostalCode], [s].[Region]
        FROM [Suppliers] AS [s]
        WHERE (@__ef_filter__p_3 = CAST(1 AS bit)) OR ([s].[IsDeleted] <> CAST(1 AS bit))
    ) AS [t1] ON [t0].[SupplierID] = [t1].[SupplierID]
    LEFT JOIN (
        SELECT [p1].[ProductID], [p1].[CategoryID], [p1].[Discontinued], [p1].[IsDeleted], [p1].[ProductName], [p1].[QuantityPerUnit], [p1].[ReorderLevel], [p1].[SupplierID], [p1].[UnitPrice], [p1].[UnitsInStock], [p1].[UnitsOnOrder]
        FROM [Products] AS [p1]
        WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p1].[IsDeleted] <> CAST(1 AS bit))
    ) AS [t2] ON [t1].[SupplierID] = [t2].[SupplierID]
    WHERE (@__ef_filter__p_1 = CAST(1 AS bit)) OR ([o].[IsDeleted] <> CAST(1 AS bit))
) AS [t3] ON [p].[ProductID] = [t3].[ProductID]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))
ORDER BY [p].[ProductID], [t3].[OrderID0], [t3].[ProductID], [t3].[OrderID], [t3].[ProductID0], [t3].[ProductID1]


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
			[e_1].[IsDeleted] = 0 AND
			[a_Product].[IsDeleted] = 0 AND
			[e_1].[IsDeleted] = 0 AND
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
	[m_1].[IsDeleted] = 0 AND
	[e].[IsDeleted] = 0 AND
	[m_1].[IsDeleted] = 0 AND
	[e].[IsDeleted] = 0 AND
	[d].[IsDeleted] = 0



DisposeTransactionAsync


-- SqlServer.2022 (asynchronously)

SELECT
	[p].[ProductName],
	[p].[ProductID]
FROM
	[Products] [p]
WHERE
	[p].[IsDeleted] = 0



