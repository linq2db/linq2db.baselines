﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[g_1].[FirstName],
	Count(*)
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName]
ORDER BY
	[g_1].[FirstName]

