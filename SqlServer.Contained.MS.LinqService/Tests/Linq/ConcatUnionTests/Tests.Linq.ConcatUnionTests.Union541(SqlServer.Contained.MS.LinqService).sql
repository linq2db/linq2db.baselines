﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[ParentID],
	[p].[Value1],
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p]
UNION
SELECT
	Coalesce([p2].[Value1], 0),
	NULL,
	NULL,
	[t1].[ParentID],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p2]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[p2].[ParentID] = [a_Children].[ParentID]
		) [t1]

