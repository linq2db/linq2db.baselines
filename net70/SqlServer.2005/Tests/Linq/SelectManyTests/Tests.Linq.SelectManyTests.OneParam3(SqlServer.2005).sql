﻿BeforeExecute
-- SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[GrandChildID]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [a_Parent] ON [t].[ParentID] = [a_Parent].[ParentID]
		INNER JOIN [GrandChild] [c_1] ON ([a_Parent].[ParentID] = [c_1].[ParentID] OR [a_Parent].[ParentID] IS NULL AND [c_1].[ParentID] IS NULL)
WHERE
	[c_1].[ParentID] = 1

