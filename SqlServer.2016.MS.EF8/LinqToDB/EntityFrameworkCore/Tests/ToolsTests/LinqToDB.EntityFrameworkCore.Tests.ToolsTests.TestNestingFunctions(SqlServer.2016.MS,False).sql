Parameters:
@__ef_filter__p_0='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[PeriodEnd], [p].[PeriodStart], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder], [t].[ProductID], [t].[CategoryID], [t].[Discontinued], [t].[IsDeleted], [t].[PeriodEnd], [t].[PeriodStart], [t].[ProductName], [t].[QuantityPerUnit], [t].[ReorderLevel], [t].[SupplierID], [t].[UnitPrice], [t].[UnitsInStock], [t].[UnitsOnOrder]
FROM [Products] AS [p]
CROSS JOIN (
    SELECT [p0].[ProductID], [p0].[CategoryID], [p0].[Discontinued], [p0].[IsDeleted], [p0].[PeriodEnd], [p0].[PeriodStart], [p0].[ProductName], [p0].[QuantityPerUnit], [p0].[ReorderLevel], [p0].[SupplierID], [p0].[UnitPrice], [p0].[UnitsInStock], [p0].[UnitsOnOrder]
    FROM [Products] AS [p0]
    WHERE (@__ef_filter__p_0 = CAST(1 AS bit) OR [p0].[IsDeleted] = CAST(0 AS bit) OR [p0].[IsDeleted] = CAST(0 AS bit)) AND (
        SELECT COUNT(*)
        FROM [Order Details] AS [o0]
        WHERE (@__ef_filter__p_1 = CAST(1 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit)) AND [p0].[ProductID] = [o0].[ProductID]) > 0
) AS [t]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)) AND (
    SELECT COUNT(*)
    FROM [Order Details] AS [o]
    WHERE (@__ef_filter__p_1 = CAST(1 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit)) AND [p].[ProductID] = [o].[ProductID]) > 0 AND [p].[ProductID] = [t].[ProductID]
ORDER BY [p].[ProductID]


-- SqlServer.2016

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
	[e].[Discontinued],
	[pd2].[IsDeleted],
	[pd2].[ProductID],
	[pd2].[ProductName],
	[pd2].[SupplierID],
	[pd2].[CategoryID],
	[pd2].[QuantityPerUnit],
	[pd2].[UnitPrice],
	[pd2].[UnitsInStock],
	[pd2].[UnitsOnOrder],
	[pd2].[ReorderLevel],
	[pd2].[Discontinued]
FROM
	[Products] [e],
	[Products] [pd2]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Order Details] [e_1]
		WHERE
			[e].[ProductID] = [e_1].[ProductID]
	) > 0 AND
	(
		SELECT
			COUNT(*)
		FROM
			[Order Details] [e_2]
		WHERE
			[pd2].[ProductID] = [e_2].[ProductID]
	) > 0 AND
	[e].[ProductID] = [pd2].[ProductID]
ORDER BY
	[e].[ProductID]



