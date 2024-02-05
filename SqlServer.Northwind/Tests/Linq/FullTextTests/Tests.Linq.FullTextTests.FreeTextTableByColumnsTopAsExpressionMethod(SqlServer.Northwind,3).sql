﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @top Int -- Int32
SET     @top = 3

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		CROSS APPLY FREETEXTTABLE([Categories], ([CategoryName], [Description]), N'meat bread', @top) [t]
WHERE
	[c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

