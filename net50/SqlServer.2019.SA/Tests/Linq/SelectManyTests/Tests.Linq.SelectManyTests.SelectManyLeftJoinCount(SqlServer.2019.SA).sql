﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	Count(*)
FROM
	[Parent] [p]
		LEFT JOIN [Child] [o] ON [p].[ParentID] = [o].[ParentID]

