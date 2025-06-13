Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_4='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_5='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT [o].[OrderID], [o].[CustomerID], [o].[EmployeeID], [o].[Freight], [o].[IsDeleted], [o].[OrderDate], [o].[RequiredDate], [o].[ShipAddress], [o].[ShipCity], [o].[ShipCountry], [o].[ShipName], [o].[ShipPostalCode], [o].[ShipRegion], [o].[ShipVia], [o].[ShippedDate], [t].[EmployeeID], [t].[Address], [t].[BirthDate], [t].[City], [t].[Country], [t].[Extension], [t].[FirstName], [t].[HireDate], [t].[HomePhone], [t].[IsDeleted], [t].[LastName], [t].[Notes], [t].[Photo], [t].[PhotoPath], [t].[PostalCode], [t].[Region], [t].[ReportsTo], [t].[Title], [t].[TitleOfCourtesy], [t1].[EmployeeID], [t1].[TerritoryID], [t1].[IsDeleted], [t1].[TerritoryID0], [t1].[IsDeleted0], [t1].[RegionID], [t1].[TerritoryDescription], [t3].[OrderID], [t3].[ProductID], [t3].[Discount], [t3].[IsDeleted], [t3].[Quantity], [t3].[UnitPrice], [t3].[ProductID0], [t3].[CategoryID], [t3].[Discontinued], [t3].[IsDeleted0], [t3].[PeriodEnd], [t3].[PeriodStart], [t3].[ProductName], [t3].[QuantityPerUnit], [t3].[ReorderLevel], [t3].[SupplierID], [t3].[UnitPrice0], [t3].[UnitsInStock], [t3].[UnitsOnOrder]
FROM [Orders] AS [o]
LEFT JOIN (
    SELECT [e].[EmployeeID], [e].[Address], [e].[BirthDate], [e].[City], [e].[Country], [e].[Extension], [e].[FirstName], [e].[HireDate], [e].[HomePhone], [e].[IsDeleted], [e].[LastName], [e].[Notes], [e].[Photo], [e].[PhotoPath], [e].[PostalCode], [e].[Region], [e].[ReportsTo], [e].[Title], [e].[TitleOfCourtesy]
    FROM [Employees] AS [e]
    WHERE @__ef_filter__p_1 = CAST(1 AS bit) OR [e].[IsDeleted] = CAST(0 AS bit) OR [e].[IsDeleted] = CAST(0 AS bit)
) AS [t] ON [o].[EmployeeID] = [t].[EmployeeID]
LEFT JOIN (
    SELECT [e0].[EmployeeID], [e0].[TerritoryID], [e0].[IsDeleted], [t0].[TerritoryID] AS [TerritoryID0], [t0].[IsDeleted] AS [IsDeleted0], [t0].[RegionID], [t0].[TerritoryDescription]
    FROM [EmployeeTerritories] AS [e0]
    INNER JOIN (
        SELECT [t2].[TerritoryID], [t2].[IsDeleted], [t2].[RegionID], [t2].[TerritoryDescription]
        FROM [Territories] AS [t2]
        WHERE @__ef_filter__p_4 = CAST(1 AS bit) OR [t2].[IsDeleted] = CAST(0 AS bit) OR [t2].[IsDeleted] = CAST(0 AS bit)
    ) AS [t0] ON [e0].[TerritoryID] = [t0].[TerritoryID]
    WHERE @__ef_filter__p_2 = CAST(1 AS bit) OR [e0].[IsDeleted] = CAST(0 AS bit) OR [e0].[IsDeleted] = CAST(0 AS bit)
) AS [t1] ON [t].[EmployeeID] = [t1].[EmployeeID]
LEFT JOIN (
    SELECT [o0].[OrderID], [o0].[ProductID], [o0].[Discount], [o0].[IsDeleted], [o0].[Quantity], [o0].[UnitPrice], [t4].[ProductID] AS [ProductID0], [t4].[CategoryID], [t4].[Discontinued], [t4].[IsDeleted] AS [IsDeleted0], [t4].[PeriodEnd], [t4].[PeriodStart], [t4].[ProductName], [t4].[QuantityPerUnit], [t4].[ReorderLevel], [t4].[SupplierID], [t4].[UnitPrice] AS [UnitPrice0], [t4].[UnitsInStock], [t4].[UnitsOnOrder]
    FROM [Order Details] AS [o0]
    INNER JOIN (
        SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[PeriodEnd], [p].[PeriodStart], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
        FROM [Products] AS [p]
        WHERE @__ef_filter__p_5 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)
    ) AS [t4] ON [o0].[ProductID] = [t4].[ProductID]
    WHERE @__ef_filter__p_3 = CAST(1 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit)
) AS [t3] ON [o].[OrderID] = [t3].[OrderID]
WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit)
ORDER BY [o].[OrderID], [t].[EmployeeID], [t1].[EmployeeID], [t1].[TerritoryID], [t1].[TerritoryID0], [t3].[OrderID], [t3].[ProductID]


BeginTransactionAsync(RepeatableRead)


-- SqlServer.2022 (asynchronously)

SELECT
	[m_1].[EmployeeId],
	[d].[IsDeleted],
	[d].[EmployeeID],
	[d].[TerritoryID],
	[a_Territory].[IsDeleted],
	[a_Territory].[TerritoryID],
	[a_Territory].[TerritoryDescription],
	[a_Territory].[RegionID]
FROM
	(
		SELECT DISTINCT
			[a_Employee].[EmployeeID] as [EmployeeId]
		FROM
			[Orders] [e]
				LEFT JOIN [Employees] [a_Employee] ON [e].[EmployeeID] = [a_Employee].[EmployeeID]
	) [m_1]
		INNER JOIN [EmployeeTerritories] [d] ON [m_1].[EmployeeId] = [d].[EmployeeID]
		INNER JOIN [Territories] [a_Territory] ON [d].[TerritoryID] = [a_Territory].[TerritoryID]



-- SqlServer.2022 (asynchronously)

SELECT
	[m_1].[OrderId],
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
	(
		SELECT DISTINCT
			[e].[OrderID] as [OrderId]
		FROM
			[Orders] [e]
	) [m_1]
		INNER JOIN [Order Details] [d] ON [m_1].[OrderId] = [d].[OrderID]
		INNER JOIN [Products] [a_Product] ON [d].[ProductID] = [a_Product].[ProductID]



DisposeTransactionAsync


-- SqlServer.2022 (asynchronously)

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
	[e].[ShipCountry],
	[a_Employee].[IsDeleted],
	[a_Employee].[EmployeeID],
	[a_Employee].[LastName],
	[a_Employee].[FirstName],
	[a_Employee].[Title],
	[a_Employee].[TitleOfCourtesy],
	[a_Employee].[BirthDate],
	[a_Employee].[HireDate],
	[a_Employee].[Address],
	[a_Employee].[City],
	[a_Employee].[Region],
	[a_Employee].[PostalCode],
	[a_Employee].[Country],
	[a_Employee].[HomePhone],
	[a_Employee].[Extension],
	[a_Employee].[Photo],
	[a_Employee].[Notes],
	[a_Employee].[ReportsTo],
	[a_Employee].[PhotoPath]
FROM
	[Orders] [e]
		LEFT JOIN [Employees] [a_Employee] ON [e].[EmployeeID] = [a_Employee].[EmployeeID]



