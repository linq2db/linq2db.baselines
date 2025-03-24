﻿BeforeExecute
--  SqlServer.Northwind SqlServer.2019

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
WHERE
	CONTAINS(([c_1].[Description]), N'bread')
ORDER BY
	[c_1].[CategoryID] DESC

