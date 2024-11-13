Parameters:
@__ef_filter__p_0='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[PeriodEnd], [p].[PeriodStart], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder], [p1].[ProductID], [p1].[CategoryID], [p1].[Discontinued], [p1].[IsDeleted], [p1].[PeriodEnd], [p1].[PeriodStart], [p1].[ProductName], [p1].[QuantityPerUnit], [p1].[ReorderLevel], [p1].[SupplierID], [p1].[UnitPrice], [p1].[UnitsInStock], [p1].[UnitsOnOrder]
FROM [Products] AS [p]
CROSS JOIN (
    SELECT [p0].[ProductID], [p0].[CategoryID], [p0].[Discontinued], [p0].[IsDeleted], [p0].[PeriodEnd], [p0].[PeriodStart], [p0].[ProductName], [p0].[QuantityPerUnit], [p0].[ReorderLevel], [p0].[SupplierID], [p0].[UnitPrice], [p0].[UnitsInStock], [p0].[UnitsOnOrder]
    FROM [Products] AS [p0]
    WHERE (@__ef_filter__p_0 = CAST(1 AS bit) OR [p0].[IsDeleted] = CAST(0 AS bit) OR [p0].[IsDeleted] = CAST(0 AS bit)) AND (
        SELECT COUNT(*)
        FROM [Order Details] AS [o0]
        WHERE (@__ef_filter__p_1 = CAST(1 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit)) AND [p0].[ProductID] = [o0].[ProductID]) > 0
) AS [p1]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)) AND (
    SELECT COUNT(*)
    FROM [Order Details] AS [o]
    WHERE (@__ef_filter__p_1 = CAST(1 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit)) AND [p].[ProductID] = [o].[ProductID]) > 0 AND [p].[ProductID] = [p1].[ProductID]
ORDER BY [p].[ProductID]


