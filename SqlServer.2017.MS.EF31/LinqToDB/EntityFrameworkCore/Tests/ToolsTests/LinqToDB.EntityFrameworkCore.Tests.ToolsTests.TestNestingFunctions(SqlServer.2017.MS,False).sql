Parameters:
@__ef_filter__p_0='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder], [t].[ProductID], [t].[CategoryID], [t].[Discontinued], [t].[IsDeleted], [t].[ProductName], [t].[QuantityPerUnit], [t].[ReorderLevel], [t].[SupplierID], [t].[UnitPrice], [t].[UnitsInStock], [t].[UnitsOnOrder]
FROM [Products] AS [p]
CROSS JOIN (
    SELECT [p0].[ProductID], [p0].[CategoryID], [p0].[Discontinued], [p0].[IsDeleted], [p0].[ProductName], [p0].[QuantityPerUnit], [p0].[ReorderLevel], [p0].[SupplierID], [p0].[UnitPrice], [p0].[UnitsInStock], [p0].[UnitsOnOrder]
    FROM [Products] AS [p0]
    WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p0].[IsDeleted] <> CAST(1 AS bit))) AND ((
        SELECT COUNT(*)
        FROM [Order Details] AS [o]
        WHERE ((@__ef_filter__p_1 = CAST(1 AS bit)) OR ([o].[IsDeleted] <> CAST(1 AS bit))) AND ([p0].[ProductID] = [o].[ProductID])) > 0)
) AS [t]
WHERE (((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND ((
    SELECT COUNT(*)
    FROM [Order Details] AS [o0]
    WHERE ((@__ef_filter__p_1 = CAST(1 AS bit)) OR ([o0].[IsDeleted] <> CAST(1 AS bit))) AND ([p].[ProductID] = [o0].[ProductID])) > 0)) AND ([p].[ProductID] = [t].[ProductID])
ORDER BY [p].[ProductID]


