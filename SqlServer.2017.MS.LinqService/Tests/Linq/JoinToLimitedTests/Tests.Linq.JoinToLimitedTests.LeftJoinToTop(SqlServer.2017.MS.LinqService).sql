﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	[Parent] [o]
		OUTER APPLY (
			SELECT TOP (1)
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[o].[ParentID] = [c_1].[ParentID]
		) [c_2]

