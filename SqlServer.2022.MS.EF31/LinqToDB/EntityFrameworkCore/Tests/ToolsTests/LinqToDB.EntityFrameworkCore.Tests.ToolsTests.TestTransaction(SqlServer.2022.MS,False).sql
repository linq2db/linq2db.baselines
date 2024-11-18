﻿Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT MAX([p].[QuantityPerUnit])
FROM [Products] AS [p]
WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND ([p].[ProductName] LIKE N'U%')


--  SqlServer.2008 (asynchronously)

SELECT
	MAX([e].[QuantityPerUnit])
FROM
	[Products] [e]
WHERE
	[e].[ProductName] LIKE N'U%' ESCAPE N'~'



--  SqlServer.2008

DELETE [e]
FROM
	[Products] [e]
WHERE
	[e].[ProductName] = N'a'



