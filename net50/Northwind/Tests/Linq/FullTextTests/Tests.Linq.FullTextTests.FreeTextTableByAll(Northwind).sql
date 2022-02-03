﻿BeforeExecute
-- Northwind SqlServer.2019
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'seafood bread'

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN FREETEXTTABLE([Categories], *, @p_1) [t] ON [c_1].[CategoryID] = [t].[KEY]
ORDER BY
	[t].[RANK] DESC

