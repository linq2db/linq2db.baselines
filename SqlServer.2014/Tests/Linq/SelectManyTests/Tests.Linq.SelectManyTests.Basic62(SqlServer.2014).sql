﻿BeforeExecute
-- SqlServer.2014

SELECT
	[_].[ParentID] + [cp].[ParentID]
FROM
	[Parent] [cp]
		CROSS JOIN [Child] [_]
WHERE
	[_].[ParentID] + [cp].[ParentID] > 1 AND [cp].[ParentID] = [_].[ParentID]

