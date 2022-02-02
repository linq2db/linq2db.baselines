﻿BeforeExecute
-- Northwind SqlServer.2019
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'seafood | bread'
DECLARE @p_2 NVarChar(4000) -- String
SET     @p_2 = N'English'
DECLARE @p_3 Int -- Int32
SET     @p_3 = 2

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], *, @p_1, LANGUAGE @p_2, @p_3) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

