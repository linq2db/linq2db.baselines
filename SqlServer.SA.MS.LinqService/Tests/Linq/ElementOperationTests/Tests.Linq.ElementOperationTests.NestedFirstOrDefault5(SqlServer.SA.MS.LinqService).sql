﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [p]
		LEFT JOIN [Child] [a_Child] ON [p].[ParentID] = [a_Child].[ParentID] AND [p].[ParentID] IS NOT NULL AND [p].[ChildID] = [a_Child].[ChildID] AND [p].[ChildID] IS NOT NULL
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Parent].[ParentID] = [a_Children].[ParentID]
			ORDER BY
				[a_Children].[ChildID]
		) [t1]
WHERE
	[p].[ChildID] > 0 AND [p].[ChildID] IS NOT NULL

