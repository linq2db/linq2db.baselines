﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]
OPTION (NO_PERFORMANCE_SPOOL)

