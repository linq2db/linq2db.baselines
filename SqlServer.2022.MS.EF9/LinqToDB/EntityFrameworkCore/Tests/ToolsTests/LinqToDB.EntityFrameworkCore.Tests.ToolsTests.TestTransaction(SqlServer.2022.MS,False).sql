﻿Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT MAX([p].[QuantityPerUnit])
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit) OR [p].[IsDeleted] = CAST(0 AS bit)) AND [p].[ProductName] LIKE N'U%'


-- SQLite.MS SqlServer.2022 (asynchronously)

SELECT
	MAX([e].[QuantityPerUnit])
FROM
	[Products] [e]
WHERE
	[e].[ProductName] LIKE N'U%' ESCAPE N'~'



-- SQLite.MS SqlServer.2022

DELETE [e]
FROM
	[Products] [e]
WHERE
	[e].[ProductName] = N'a'



