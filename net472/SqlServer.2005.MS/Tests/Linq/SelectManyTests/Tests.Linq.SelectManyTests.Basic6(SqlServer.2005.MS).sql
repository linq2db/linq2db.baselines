﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON [_].[ParentID] > 0 AND [cp].[ParentID] = [_].[ParentID]

