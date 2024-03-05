﻿BeforeExecute
-- SqlCe

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_1].[ParentID] as [ParentID_1],
	[c_1].[ChildID]
FROM
	[Parent] [o]
		LEFT JOIN (
			SELECT TOP (1)
				[x].[ParentID],
				[x].[ChildID]
			FROM
				[Child] [x]
		) [c_1] ON [c_1].[ParentID] = [o].[ParentID]

