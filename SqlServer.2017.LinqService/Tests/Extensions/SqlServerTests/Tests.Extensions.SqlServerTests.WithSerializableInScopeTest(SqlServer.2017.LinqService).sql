﻿BeforeExecute
-- SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (Serializable)
		INNER JOIN [Child] [c_1] WITH (Serializable) ON [p].[ParentID] = [c_1].[ParentID]

