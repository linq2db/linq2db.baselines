﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[Value1] = 1 AND [p].[Value1] IS NOT NULL

