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


-- SqlServer.2022

SELECT
	[e].[IsDeleted],
	[e].[ProductID],
	[e].[ProductName],
	[e].[SupplierID],
	[e].[CategoryID],
	[e].[QuantityPerUnit],
	[e].[UnitPrice],
	[e].[UnitsInStock],
	[e].[UnitsOnOrder],
	[e].[ReorderLevel],
	[e].[Discontinued]
FROM
	[Products] [e]
WHERE
	[e].[IsDeleted] = 0 AND [e].[ProductName] LIKE N'%a%' ESCAPE N'~'



-- SqlServer.2022

SELECT
	[e].[IsDeleted],
	[e].[ProductID],
	[e].[ProductName],
	[e].[SupplierID],
	[e].[CategoryID],
	[e].[QuantityPerUnit],
	[e].[UnitPrice],
	[e].[UnitsInStock],
	[e].[UnitsOnOrder],
	[e].[ReorderLevel],
	[e].[Discontinued]
FROM
	[Products] [e]
WHERE
	[e].[IsDeleted] = 0 AND [e].[ProductName] LIKE N'%a%' ESCAPE N'~'



-- SqlServer.2022

SELECT
	[e].[IsDeleted],
	[e].[ProductID],
	[e].[ProductName],
	[e].[SupplierID],
	[e].[CategoryID],
	[e].[QuantityPerUnit],
	[e].[UnitPrice],
	[e].[UnitsInStock],
	[e].[UnitsOnOrder],
	[e].[ReorderLevel],
	[e].[Discontinued]
FROM
	[Products] [e]
WHERE
	[e].[IsDeleted] = 0 AND [e].[ProductName] LIKE N'%a%' ESCAPE N'~'



-- SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Products] [e]
		WHERE
			[e].[IsDeleted] = 0 AND [e].[ProductName] LIKE N'%a%' ESCAPE N'~'
	), 1, 0)



