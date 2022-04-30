﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'sweetest candy bread and dry meat'
DECLARE @p_2 Int -- Int32
SET     @p_2 = 2057

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN FREETEXTTABLE([Categories], ([CategoryName]), @p_1, LANGUAGE @p_2) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

