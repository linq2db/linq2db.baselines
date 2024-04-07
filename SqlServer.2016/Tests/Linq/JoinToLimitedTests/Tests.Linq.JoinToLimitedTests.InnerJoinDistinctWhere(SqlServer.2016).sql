﻿BeforeExecute
-- SqlServer.2016

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [o]
		INNER JOIN (
			SELECT DISTINCT
				[x].[ParentID],
				[x].[ChildID]
			FROM
				[Child] [x]
		) [c_1] ON [c_1].[ParentID] = [o].[ParentID]

