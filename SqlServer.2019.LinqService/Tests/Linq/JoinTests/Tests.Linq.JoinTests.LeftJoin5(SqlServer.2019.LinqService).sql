﻿BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1],
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
WHERE
	[ch].[ParentID] IS NULL

