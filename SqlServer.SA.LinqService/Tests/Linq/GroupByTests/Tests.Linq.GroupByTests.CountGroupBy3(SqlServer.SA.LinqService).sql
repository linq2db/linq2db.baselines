﻿BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

