﻿BeforeExecute
-- SqlCe

SELECT
	MAX([p].[ParentID]) as [MAX_1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[ChildID] > 20

