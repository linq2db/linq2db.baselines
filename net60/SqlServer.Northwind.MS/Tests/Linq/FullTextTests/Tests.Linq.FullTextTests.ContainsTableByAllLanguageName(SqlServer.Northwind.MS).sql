﻿BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'seafood OR bread'
DECLARE @p_2 NVarChar(4000) -- String
SET     @p_2 = N'Russian'

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], *, @p_1, LANGUAGE @p_2) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

