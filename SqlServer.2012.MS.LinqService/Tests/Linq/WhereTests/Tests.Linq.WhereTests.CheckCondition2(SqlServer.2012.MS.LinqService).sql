﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[Value1] = 1 OR [p].[ParentID] = 2 AND ([p].[ParentID] <> 3 OR [p].[ParentID] = 4) AND [p].[Value1] IS NOT NULL

