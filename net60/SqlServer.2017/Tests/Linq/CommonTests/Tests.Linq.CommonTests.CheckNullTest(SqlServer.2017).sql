﻿BeforeExecute
-- SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1],
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID],
	[t1].[is_empty],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[a].[ParentID],
				[a].[ChildID],
				[a].[GrandChildID],
				1 as [is_empty]
			FROM
				[GrandChild] [a]
			WHERE
				[a].[ParentID] = [p].[ParentID]
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

