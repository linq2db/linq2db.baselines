﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ParentID] = 1

