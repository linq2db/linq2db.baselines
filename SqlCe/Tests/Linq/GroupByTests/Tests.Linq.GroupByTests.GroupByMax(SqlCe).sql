﻿BeforeExecute
-- SqlCe

SELECT
	Max([g_1].[ParentID]) as [Max_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ChildID]

