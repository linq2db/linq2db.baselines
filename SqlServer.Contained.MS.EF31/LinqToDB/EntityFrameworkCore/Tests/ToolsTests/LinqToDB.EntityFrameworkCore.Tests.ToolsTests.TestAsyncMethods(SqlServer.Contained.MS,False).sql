Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND (CHARINDEX(N'a', [p].[ProductName]) > 0)


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND (CHARINDEX(N'a', [p].[ProductName]) > 0)


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT CASE
    WHEN EXISTS (
        SELECT 1
        FROM [Products] AS [p]
        WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND (CHARINDEX(N'a', [p].[ProductName]) > 0)) THEN CAST(1 AS bit)
    ELSE CAST(0 AS bit)
END


