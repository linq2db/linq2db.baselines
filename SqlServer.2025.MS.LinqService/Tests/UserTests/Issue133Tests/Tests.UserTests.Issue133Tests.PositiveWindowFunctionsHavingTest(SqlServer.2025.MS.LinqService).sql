﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	(CAST(COUNT(*) AS Float) * 100) / SUM(COUNT(*)) OVER(),
	SUM([g_1].[ParentID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	SUM([g_1].[ParentID]) <> 36

