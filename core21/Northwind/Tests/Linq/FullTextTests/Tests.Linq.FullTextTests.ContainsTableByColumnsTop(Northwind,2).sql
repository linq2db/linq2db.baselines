BeforeExecute
-- Northwind SqlServer.2017
DECLARE @p1 NVarChar(4000) -- String
SET     @p1 = N'meat'
DECLARE @p2 Int -- Int32
SET     @p2 = 2

SELECT 
	[c_1].[CategoryID], 
	[c_1].[CategoryName], 
	[c_1].[Description], 
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], ([CategoryName], [Description]), @p1, @p2) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

