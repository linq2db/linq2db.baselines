﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'meat bread'
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN FREETEXTTABLE([Categories], ([CategoryName], [Description]), @p, @p_1) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

