﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[Value1],
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[Value1] = 1

