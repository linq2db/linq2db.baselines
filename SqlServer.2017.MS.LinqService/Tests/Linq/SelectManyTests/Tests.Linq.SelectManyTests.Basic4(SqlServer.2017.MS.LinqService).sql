﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		INNER JOIN [Child] [_] ON [p].[ParentID] = [_].[ParentID] + 1

