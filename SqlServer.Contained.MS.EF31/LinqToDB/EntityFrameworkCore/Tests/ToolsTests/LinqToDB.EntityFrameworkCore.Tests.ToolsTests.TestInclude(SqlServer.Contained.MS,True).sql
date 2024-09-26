Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_4='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_5='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT [o].[OrderID], [o].[CustomerID], [o].[EmployeeID], [o].[Freight], [o].[IsDeleted], [o].[OrderDate], [o].[RequiredDate], [o].[ShipAddress], [o].[ShipCity], [o].[ShipCountry], [o].[ShipName], [o].[ShipPostalCode], [o].[ShipRegion], [o].[ShipVia], [o].[ShippedDate], [t].[EmployeeID], [t].[Address], [t].[BirthDate], [t].[City], [t].[Country], [t].[Extension], [t].[FirstName], [t].[HireDate], [t].[HomePhone], [t].[IsDeleted], [t].[LastName], [t].[Notes], [t].[Photo], [t].[PhotoPath], [t].[PostalCode], [t].[Region], [t].[ReportsTo], [t].[Title], [t].[TitleOfCourtesy], [t2].[EmployeeID], [t2].[TerritoryID], [t2].[IsDeleted], [t2].[TerritoryID0], [t2].[IsDeleted0], [t2].[RegionID], [t2].[TerritoryDescription], [t4].[OrderID], [t4].[ProductID], [t4].[Discount], [t4].[IsDeleted], [t4].[Quantity], [t4].[UnitPrice], [t4].[ProductID0], [t4].[CategoryID], [t4].[Discontinued], [t4].[IsDeleted0], [t4].[ProductName], [t4].[QuantityPerUnit], [t4].[ReorderLevel], [t4].[SupplierID], [t4].[UnitPrice0], [t4].[UnitsInStock], [t4].[UnitsOnOrder]
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


