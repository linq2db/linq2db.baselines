﻿BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	MAX([p].[ParentID])
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[ChildID] > 20

