Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_4='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_5='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT [t].[EmployeeID], [t].[Address], [t].[BirthDate], [t].[City], [t].[Country], [t].[Extension], [t].[FirstName], [t].[HireDate], [t].[HomePhone], [t].[IsDeleted], [t].[LastName], [t].[Notes], [t].[Photo], [t].[PhotoPath], [t].[PostalCode], [t].[Region], [t].[ReportsTo], [t].[Title], [t].[TitleOfCourtesy], [o].[OrderID], [t1].[EmployeeID], [t1].[TerritoryID], [t1].[IsDeleted], [t1].[TerritoryID0], [t1].[IsDeleted0], [t1].[RegionID], [t1].[TerritoryDescription], [t3].[OrderID], [t3].[ProductID], [t3].[Discount], [t3].[IsDeleted], [t3].[Quantity], [t3].[UnitPrice], [t3].[ProductID0], [t3].[CategoryID], [t3].[Discontinued], [t3].[IsDeleted0], [t3].[PeriodEnd], [t3].[PeriodStart], [t3].[ProductName], [t3].[QuantityPerUnit], [t3].[ReorderLevel], [t3].[SupplierID], [t3].[UnitPrice0], [t3].[UnitsInStock], [t3].[UnitsOnOrder]
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


