﻿BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ParentID] DESC,
	[t1].[ChildID]

