﻿BeforeExecute
-- SqlServer.2014

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	Count(*) > 2

