﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[o].[ParentID],
	[o].[Value1],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [o]
		OUTER APPLY (
			SELECT DISTINCT
				[cg].[ParentID],
				[cg].[ChildID]
			FROM
				[Child] [cg]
			WHERE
				[o].[ParentID] = [cg].[ParentID]
		) [t1]

