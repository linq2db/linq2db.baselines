﻿BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (PagLock)
		INNER JOIN [Child] [c_1] WITH (PagLock) ON [p].[ParentID] = [c_1].[ParentID]

