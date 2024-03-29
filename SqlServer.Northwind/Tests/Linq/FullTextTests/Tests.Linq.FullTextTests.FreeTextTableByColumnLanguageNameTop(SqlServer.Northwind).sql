﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'food'
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'Thai'
DECLARE @p_2 Int -- Int32
SET     @p_2 = 2

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN FREETEXTTABLE([Categories], ([Description]), @p, LANGUAGE @p_1, @p_2) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

