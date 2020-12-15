BeforeExecute
-- Northwind SqlServer.2017
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'meat'
DECLARE @p_2 Int -- Int32
SET     @p_2 = 1048
DECLARE @p_3 Int -- Int32
SET     @p_3 = 1

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN FREETEXTTABLE([Categories], ([CategoryName], [Description]), @p_1, LANGUAGE @p_2, @p_3) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

