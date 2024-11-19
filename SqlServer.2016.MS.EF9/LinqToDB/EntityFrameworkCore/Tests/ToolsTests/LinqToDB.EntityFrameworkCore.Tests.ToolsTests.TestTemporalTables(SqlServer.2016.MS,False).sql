--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-19T09:24:24.0786159' AS DATETIME2)

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



--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-18T09:24:24.0789668' AS DATETIME2)
DECLARE @p_1 DateTime2
SET     @p_1 = CAST('2024-11-19T09:24:24.0789695' AS DATETIME2)

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



--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-18T09:24:24.0789753' AS DATETIME2)
DECLARE @p_1 DateTime2
SET     @p_1 = CAST('2024-11-19T09:24:24.0789754' AS DATETIME2)

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



--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-18T09:24:24.0789776' AS DATETIME2)
DECLARE @p_1 DateTime2
SET     @p_1 = CAST('2024-11-19T09:24:24.0789777' AS DATETIME2)

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



--  SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2024-11-19T09:24:24.0938382' AS DATETIME2)
DECLARE @p_1 DateTime2
SET     @p_1 = CAST('2024-11-18T09:24:24.0945281' AS DATETIME2)
DECLARE @p_2 DateTime2
SET     @p_2 = CAST('2024-11-19T09:24:24.0945333' AS DATETIME2)
DECLARE @p_3 DateTime2
SET     @p_3 = CAST('2024-11-18T09:24:24.0952515' AS DATETIME2)
DECLARE @p_4 DateTime2
SET     @p_4 = CAST('2024-11-19T09:24:24.0952541' AS DATETIME2)
DECLARE @p_5 DateTime2
SET     @p_5 = CAST('2024-11-18T09:24:24.0957593' AS DATETIME2)
DECLARE @p_6 DateTime2
SET     @p_6 = CAST('2024-11-19T09:24:24.0957618' AS DATETIME2)

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
		LEFT JOIN [Products] FOR SYSTEM_TIME AS OF @p [q1] ON [q1].[ProductID] = [e].[ProductID]
		LEFT JOIN [Products] FOR SYSTEM_TIME FROM @p_1 TO @p_2 [q2] ON [q2].[ProductID] = [e].[ProductID]
		LEFT JOIN [Products] FOR SYSTEM_TIME ALL [q3] ON [q3].[ProductID] = [e].[ProductID]
		LEFT JOIN [Products] FOR SYSTEM_TIME BETWEEN @p_3 AND @p_4 [q4] ON [q4].[ProductID] = [e].[ProductID]
		LEFT JOIN [Products] FOR SYSTEM_TIME CONTAINED IN (@p_5, @p_6) [q5] ON [q5].[ProductID] = [e].[ProductID]



