﻿BeforeExecute
-- Northwind SqlServer.2019
DECLARE @search_1 NVarChar(4000) -- String
SET     @search_1 = N'meat'
DECLARE @lang NVarChar(4000) -- String
SET     @lang = N'Russian'
DECLARE @top Int -- Int32
SET     @top = 2

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		CROSS APPLY CONTAINSTABLE([Categories], ([CategoryName], [Description]), @search_1, LANGUAGE @lang, @top) [t]
WHERE
	[c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

