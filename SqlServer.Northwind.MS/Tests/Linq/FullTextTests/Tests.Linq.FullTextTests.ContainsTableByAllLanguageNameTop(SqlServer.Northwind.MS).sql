﻿BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'seafood | bread'
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'English'
DECLARE @p_2 Int -- Int32
SET     @p_2 = 2

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], *, @p, LANGUAGE @p_1, @p_2) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

