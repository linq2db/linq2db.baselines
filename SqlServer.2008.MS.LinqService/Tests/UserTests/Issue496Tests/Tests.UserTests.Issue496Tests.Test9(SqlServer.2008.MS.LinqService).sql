﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Parent] [_]
		INNER JOIN [Child] [c_1] ON [_].[ParentID] = [c_1].[ParentID]
WHERE
	[_].[ParentID] = 1

