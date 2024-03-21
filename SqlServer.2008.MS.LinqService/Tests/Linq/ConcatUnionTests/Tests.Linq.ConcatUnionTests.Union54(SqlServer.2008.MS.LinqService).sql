﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p1].[ParentID],
	[p1].[ParentID],
	[p1].[Value1],
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p1]
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
			ORDER BY
				[a_Children].[ChildID] DESC
		) [t1]

