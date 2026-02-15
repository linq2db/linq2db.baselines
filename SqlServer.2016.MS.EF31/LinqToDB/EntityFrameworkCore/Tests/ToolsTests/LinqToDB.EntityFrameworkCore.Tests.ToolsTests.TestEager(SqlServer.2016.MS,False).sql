Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_4='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_5='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT [t].[EmployeeID], [t].[Address], [t].[BirthDate], [t].[City], [t].[Country], [t].[Extension], [t].[FirstName], [t].[HireDate], [t].[HomePhone], [t].[IsDeleted], [t].[LastName], [t].[Notes], [t].[Photo], [t].[PhotoPath], [t].[PostalCode], [t].[Region], [t].[ReportsTo], [t].[Title], [t].[TitleOfCourtesy], [o].[OrderID], [t2].[EmployeeID], [t2].[TerritoryID], [t2].[IsDeleted], [t2].[TerritoryID0], [t2].[IsDeleted0], [t2].[RegionID], [t2].[TerritoryDescription], [t4].[OrderID], [t4].[ProductID], [t4].[Discount], [t4].[IsDeleted], [t4].[Quantity], [t4].[UnitPrice], [t4].[ProductID0], [t4].[CategoryID], [t4].[Discontinued], [t4].[IsDeleted0], [t4].[ProductName], [t4].[QuantityPerUnit], [t4].[ReorderLevel], [t4].[SupplierID], [t4].[UnitPrice0], [t4].[UnitsInStock], [t4].[UnitsOnOrder]
FROM [Orders] AS [o]
LEFT JOIN (
    SELECT [e].[EmployeeID], [e].[Address], [e].[BirthDate], [e].[City], [e].[Country], [e].[Extension], [e].[FirstName], [e].[HireDate], [e].[HomePhone], [e].[IsDeleted], [e].[LastName], [e].[Notes], [e].[Photo], [e].[PhotoPath], [e].[PostalCode], [e].[Region], [e].[ReportsTo], [e].[Title], [e].[TitleOfCourtesy]
    FROM [Employees] AS [e]
    WHERE (@__ef_filter__p_1 = CAST(1 AS bit)) OR ([e].[IsDeleted] <> CAST(1 AS bit))
) AS [t] ON [o].[EmployeeID] = [t].[EmployeeID]
LEFT JOIN (
    SELECT [e0].[EmployeeID], [e0].[TerritoryID], [e0].[IsDeleted], [t1].[TerritoryID] AS [TerritoryID0], [t1].[IsDeleted] AS [IsDeleted0], [t1].[RegionID], [t1].[TerritoryDescription]
    FROM [EmployeeTerritories] AS [e0]
    INNER JOIN (
        SELECT [t0].[TerritoryID], [t0].[IsDeleted], [t0].[RegionID], [t0].[TerritoryDescription]
        FROM [Territories] AS [t0]
        WHERE (@__ef_filter__p_4 = CAST(1 AS bit)) OR ([t0].[IsDeleted] <> CAST(1 AS bit))
    ) AS [t1] ON [e0].[TerritoryID] = [t1].[TerritoryID]
    WHERE (@__ef_filter__p_2 = CAST(1 AS bit)) OR ([e0].[IsDeleted] <> CAST(1 AS bit))
) AS [t2] ON [t].[EmployeeID] = [t2].[EmployeeID]
LEFT JOIN (
    SELECT [o0].[OrderID], [o0].[ProductID], [o0].[Discount], [o0].[IsDeleted], [o0].[Quantity], [o0].[UnitPrice], [t3].[ProductID] AS [ProductID0], [t3].[CategoryID], [t3].[Discontinued], [t3].[IsDeleted] AS [IsDeleted0], [t3].[ProductName], [t3].[QuantityPerUnit], [t3].[ReorderLevel], [t3].[SupplierID], [t3].[UnitPrice] AS [UnitPrice0], [t3].[UnitsInStock], [t3].[UnitsOnOrder]
    FROM [Order Details] AS [o0]
    INNER JOIN (
        SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
        FROM [Products] AS [p]
        WHERE (@__ef_filter__p_5 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))
    ) AS [t3] ON [o0].[ProductID] = [t3].[ProductID]
    WHERE (@__ef_filter__p_3 = CAST(1 AS bit)) OR ([o0].[IsDeleted] <> CAST(1 AS bit))
) AS [t4] ON [o].[OrderID] = [t4].[OrderID]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([o].[IsDeleted] <> CAST(1 AS bit))
ORDER BY [o].[OrderID], [t2].[EmployeeID], [t2].[TerritoryID], [t2].[TerritoryID0], [t4].[OrderID], [t4].[ProductID], [t4].[ProductID0]




-- SqlServer.2016

SELECT
	[m_1].[EmployeeId],
	[d].[IsDeleted],
	[d].[EmployeeID],
	[d].[TerritoryID],
	[e_1].[IsDeleted],
	[e_1].[TerritoryID],
	[e_1].[TerritoryDescription],
	[e_1].[RegionID]
FROM
	(
		SELECT DISTINCT
			[a_Employee].[EmployeeID] as [EmployeeId]
		FROM
			[Orders] [e]
				LEFT JOIN [Employees] [a_Employee] ON [e].[EmployeeID] = [a_Employee].[EmployeeID]
	) [m_1]
		INNER JOIN [EmployeeTerritories] [d] ON [m_1].[EmployeeId] = [d].[EmployeeID]
		INNER JOIN [Territories] [e_1] ON [d].[TerritoryID] = [e_1].[TerritoryID]



-- SqlServer.2016

SELECT
	[m_1].[OrderId],
	[d].[IsDeleted],
	[d].[OrderID],
	[d].[ProductID],
	[d].[UnitPrice],
	[d].[Quantity],
	[d].[Discount],
	[e_1].[IsDeleted],
	[e_1].[ProductID],
	[e_1].[ProductName],
	[e_1].[SupplierID],
	[e_1].[CategoryID],
	[e_1].[QuantityPerUnit],
	[e_1].[UnitPrice],
	[e_1].[UnitsInStock],
	[e_1].[UnitsOnOrder],
	[e_1].[ReorderLevel],
	[e_1].[Discontinued]
FROM
	(
		SELECT DISTINCT
			[e].[OrderID] as [OrderId]
		FROM
			[Orders] [e]
	) [m_1]
		INNER JOIN [Order Details] [d] ON [m_1].[OrderId] = [d].[OrderID]
		INNER JOIN [Products] [e_1] ON [d].[ProductID] = [e_1].[ProductID]





-- SqlServer.2016

SELECT
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
	[a_Employee].[PhotoPath],
	[o].[OrderID]
FROM
	[Orders] [o]
		LEFT JOIN [Employees] [a_Employee] ON [o].[EmployeeID] = [a_Employee].[EmployeeID]



