﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[t1].[ParentID] + 1
FROM
	[Parent] [p],
	[Child] [t1]
WHERE
	[t1].[ParentID] > 0

