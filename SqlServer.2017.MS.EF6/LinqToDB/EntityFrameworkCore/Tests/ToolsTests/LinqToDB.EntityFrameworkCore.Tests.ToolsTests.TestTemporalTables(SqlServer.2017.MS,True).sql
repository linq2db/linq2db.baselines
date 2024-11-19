--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-19T09:32:24.6466365' AS DATETIME2)

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
	[Products] FOR SYSTEM_TIME AS OF @p [e]
WHERE
	[e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0



--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-18T09:32:24.6475244' AS DATETIME2)
DECLARE @p_1 DateTime2
SET     @p_1 = CAST('2024-11-19T09:32:24.6475335' AS DATETIME2)

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
	[Products] FOR SYSTEM_TIME FROM @p TO @p_1 [e]
WHERE
	[e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0



--  SqlServer.2008

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
	[Products] FOR SYSTEM_TIME ALL [e]
WHERE
	[e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0



--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-18T09:32:24.6483735' AS DATETIME2)
DECLARE @p_1 DateTime2
SET     @p_1 = CAST('2024-11-19T09:32:24.6483752' AS DATETIME2)

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
	[Products] FOR SYSTEM_TIME BETWEEN @p AND @p_1 [e]
WHERE
	[e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0



--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-18T09:32:24.6487205' AS DATETIME2)
DECLARE @p_1 DateTime2
SET     @p_1 = CAST('2024-11-19T09:32:24.6487209' AS DATETIME2)

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
	[Products] FOR SYSTEM_TIME CONTAINED IN (@p, @p_1) [e]
WHERE
	[e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0



--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-19T09:32:24.7108972' AS DATETIME2)
DECLARE @p_1 DateTime2
SET     @p_1 = CAST('2024-11-18T09:32:24.7117299' AS DATETIME2)
DECLARE @p_2 DateTime2
SET     @p_2 = CAST('2024-11-19T09:32:24.7117335' AS DATETIME2)
DECLARE @p_3 DateTime2
SET     @p_3 = CAST('2024-11-18T09:32:24.7129843' AS DATETIME2)
DECLARE @p_4 DateTime2
SET     @p_4 = CAST('2024-11-19T09:32:24.7129868' AS DATETIME2)
DECLARE @p_5 DateTime2
SET     @p_5 = CAST('2024-11-18T09:32:24.7137041' AS DATETIME2)
DECLARE @p_6 DateTime2
SET     @p_6 = CAST('2024-11-19T09:32:24.7137070' AS DATETIME2)

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
		LEFT JOIN [Products] FOR SYSTEM_TIME AS OF @p [q1] ON [q1].[ProductID] = [e].[ProductID] AND ([q1].[IsDeleted] = 0 OR [q1].[IsDeleted] = 0)
		LEFT JOIN [Products] FOR SYSTEM_TIME FROM @p_1 TO @p_2 [q2] ON [q2].[ProductID] = [e].[ProductID] AND ([q2].[IsDeleted] = 0 OR [q2].[IsDeleted] = 0)
		LEFT JOIN [Products] FOR SYSTEM_TIME ALL [q3] ON [q3].[ProductID] = [e].[ProductID] AND ([q3].[IsDeleted] = 0 OR [q3].[IsDeleted] = 0)
		LEFT JOIN [Products] FOR SYSTEM_TIME BETWEEN @p_3 AND @p_4 [q4] ON [q4].[ProductID] = [e].[ProductID] AND ([q4].[IsDeleted] = 0 OR [q4].[IsDeleted] = 0)
		LEFT JOIN [Products] FOR SYSTEM_TIME CONTAINED IN (@p_5, @p_6) [q5] ON [q5].[ProductID] = [e].[ProductID] AND ([q5].[IsDeleted] = 0 OR [q5].[IsDeleted] = 0)
WHERE
	[e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0



