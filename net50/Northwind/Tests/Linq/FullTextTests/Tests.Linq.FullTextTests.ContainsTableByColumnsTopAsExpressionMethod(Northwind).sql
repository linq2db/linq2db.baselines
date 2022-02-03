﻿BeforeExecute
-- Northwind SqlServer.2019

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		CROSS APPLY CONTAINSTABLE([Categories], ([CategoryName], [Description]), N'meat', 2) [t]
WHERE
	[c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

