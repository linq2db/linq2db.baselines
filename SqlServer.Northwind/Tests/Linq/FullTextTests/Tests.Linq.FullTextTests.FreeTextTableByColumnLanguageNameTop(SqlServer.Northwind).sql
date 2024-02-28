﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @term NVarChar(4000) -- String
SET     @term = N'food'
DECLARE @language NVarChar(4000) -- String
SET     @language = N'Thai'
DECLARE @top Int -- Int32
SET     @top = 2

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN FREETEXTTABLE([Categories], ([Description]), @term, LANGUAGE @language, @top) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

