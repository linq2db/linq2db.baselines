﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (NoWait)
		INNER JOIN [Child] [c_1] WITH (NoWait) ON [p].[ParentID] = [c_1].[ParentID]

