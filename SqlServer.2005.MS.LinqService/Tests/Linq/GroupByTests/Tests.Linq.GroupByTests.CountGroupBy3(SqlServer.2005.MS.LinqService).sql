﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

