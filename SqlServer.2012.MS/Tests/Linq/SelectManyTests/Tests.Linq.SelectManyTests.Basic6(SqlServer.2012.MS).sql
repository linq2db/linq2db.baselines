﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON [_].[ParentID] > 0 AND [cp].[ParentID] = [_].[ParentID]

