﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @search NVarChar(4000) -- String
SET     @search = N'bread'
DECLARE @language NVarChar(4000) -- String
SET     @language = N'Bulgarian'
DECLARE @top Int -- Int32
SET     @top = 7

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN CONTAINSTABLE([Categories], ([Description], [Description]), @search, LANGUAGE @language, @top) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

