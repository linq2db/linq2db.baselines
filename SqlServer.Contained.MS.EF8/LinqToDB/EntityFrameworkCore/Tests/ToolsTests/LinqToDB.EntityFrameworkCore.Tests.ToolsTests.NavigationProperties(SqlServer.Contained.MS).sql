Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT [o].[OrderID], [t].[OrderID], [t].[ProductID], [t0].[ProductID], [t1].[OrderId], [t1].[ProductId], [t1].[Quantity], [t].[Quantity], [t0].[ProductName]
FROM [Orders] AS [o]
INNER JOIN (
    SELECT [o0].[OrderID], [o0].[ProductID], [o0].[Quantity]
    FROM [Order Details] AS [o0]
    WHERE @__ef_filter__p_1 = CAST(1 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit) OR [o0].[IsDeleted] = CAST(0 AS bit)
) AS [t] ON [o].[OrderID] = [t].[OrderID]
INNER JOIN (
    SELECT [p].[ProductID], [p].[ProductName]
    FROM [Products] AS [p]
    WHERE @__ef_filter__p_2 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)
) AS [t0] ON [t].[ProductID] = [t0].[ProductID]
LEFT JOIN (
    SELECT [o1].[OrderID] AS [OrderId], [o1].[ProductID] AS [ProductId], [o1].[Quantity]
    FROM [Order Details] AS [o1]
    WHERE @__ef_filter__p_1 = CAST(1 AS bit) OR [o1].[IsDeleted] = CAST(0 AS bit) OR [o1].[IsDeleted] = CAST(0 AS bit)
) AS [t1] ON [t0].[ProductID] = [t1].[ProductId]
WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit) OR [o].[IsDeleted] = CAST(0 AS bit)
ORDER BY [o].[OrderID], [t].[OrderID], [t].[ProductID], [t0].[ProductID], [t1].[OrderId]




-- SqlServer.2019

SELECT
	[m_1].[ProductId],
	[d].[OrderID],
	[d].[ProductID],
	[d].[Quantity]
FROM
	(
		SELECT DISTINCT
			[a_Product].[ProductID] as [ProductId]
		FROM
			[Orders] [e]
				INNER JOIN [Order Details] [od] ON [e].[OrderID] = [od].[OrderID]
				INNER JOIN [Products] [a_Product] ON [od].[ProductID] = [a_Product].[ProductID]
	) [m_1]
		INNER JOIN [Order Details] [d] ON [m_1].[ProductId] = [d].[ProductID]





-- SqlServer.2019

SELECT
	[a_Product].[ProductID],
	[od].[OrderID],
	[od].[ProductID],
	[od].[Quantity],
	[a_Product].[ProductName]
FROM
	[Orders] [o]
		INNER JOIN [Order Details] [od] ON [o].[OrderID] = [od].[OrderID]
		INNER JOIN [Products] [a_Product] ON [od].[ProductID] = [a_Product].[ProductID]



