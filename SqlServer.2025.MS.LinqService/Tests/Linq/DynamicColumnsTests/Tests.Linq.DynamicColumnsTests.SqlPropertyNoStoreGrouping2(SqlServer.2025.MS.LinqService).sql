﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[g_1].[FirstName],
	[g_1].[LastName],
	COUNT(*)
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName],
	[g_1].[LastName]
ORDER BY
	[g_1].[FirstName]

