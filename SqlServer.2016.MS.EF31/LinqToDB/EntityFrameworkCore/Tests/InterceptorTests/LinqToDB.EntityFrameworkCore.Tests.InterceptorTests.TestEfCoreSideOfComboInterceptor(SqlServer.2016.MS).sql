Parameters:
@__p_0='?' (DbType = Int32), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT TOP(@__p_0) [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND ([p].[ProductID] > 0)
ORDER BY [p].[ProductID]


