﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (TabLockX)
		INNER JOIN [Child] [c_1] WITH (TabLockX) ON [p].[ParentID] = [c_1].[ParentID]

