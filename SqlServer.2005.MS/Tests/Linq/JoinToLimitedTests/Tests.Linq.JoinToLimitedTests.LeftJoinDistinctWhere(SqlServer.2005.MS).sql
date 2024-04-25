﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [o]
		LEFT JOIN (
			SELECT DISTINCT
				[x].[ParentID],
				[x].[ChildID]
			FROM
				[Child] [x]
		) [c_1] ON [c_1].[ParentID] = [o].[ParentID]

