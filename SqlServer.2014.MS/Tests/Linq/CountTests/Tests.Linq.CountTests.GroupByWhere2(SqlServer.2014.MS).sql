﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(*) > 2

