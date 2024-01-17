﻿BeforeExecute
-- SqlServer.2022

SELECT
	[o].[ParentID],
	[o].[Value1],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [o]
		OUTER APPLY (
			SELECT DISTINCT
				[x].[ParentID],
				[x].[ChildID]
			FROM
				[Child] [x]
			WHERE
				[x].[ParentID] = [o].[ParentID]
		) [t1]

