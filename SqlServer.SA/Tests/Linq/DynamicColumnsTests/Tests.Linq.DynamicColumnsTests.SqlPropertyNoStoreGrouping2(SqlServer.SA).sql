﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[g_1].[FirstName],
	[g_1].[LastName],
	Count(*)
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName],
	[g_1].[LastName]
ORDER BY
	[g_1].[FirstName]

