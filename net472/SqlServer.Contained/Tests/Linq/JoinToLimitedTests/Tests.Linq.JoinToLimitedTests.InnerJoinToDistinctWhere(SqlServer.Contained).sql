﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[o].[ParentID],
	[o].[Value1],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [o]
		CROSS APPLY (
			SELECT DISTINCT
				[x].[ParentID],
				[x].[ChildID]
			FROM
				[Child] [x]
			WHERE
				[x].[ParentID] = [o].[ParentID]
		) [t1]

