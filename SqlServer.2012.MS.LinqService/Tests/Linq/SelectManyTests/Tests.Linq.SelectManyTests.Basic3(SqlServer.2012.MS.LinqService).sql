﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[t1].[ParentID] + 1
FROM
	[Parent] [p],
	[Child] [t1]
WHERE
	[t1].[ParentID] > 0

