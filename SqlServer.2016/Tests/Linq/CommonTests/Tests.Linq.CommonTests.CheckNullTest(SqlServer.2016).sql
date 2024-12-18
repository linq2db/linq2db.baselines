﻿BeforeExecute
-- SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1],
	[t1].[cond],
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[a].[ParentID],
				[a].[ChildID],
				[a].[GrandChildID],
				1 as [cond]
			FROM
				[GrandChild] [a]
			WHERE
				[a].[ParentID] = [p].[ParentID] AND [a].[ParentID] IS NOT NULL
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_1].[ParentID],
				[a_1].[ChildID]
			FROM
				[Child] [a_1]
			WHERE
				[a_1].[ParentID] = [p].[ParentID]
		) [t2]
WHERE
	[p].[ParentID] = 6

