﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	(CAST(COUNT(*) AS Float) * 100) / SUM(COUNT(*)) OVER(),
	SUM([g_1].[ParentID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	SUM([g_1].[ParentID]) <> 36

