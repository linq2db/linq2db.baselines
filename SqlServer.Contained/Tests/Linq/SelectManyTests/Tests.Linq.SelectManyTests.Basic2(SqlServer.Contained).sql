﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]

