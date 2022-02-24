﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[a_Middle].[ParentID],
	[a_Middle].[ChildID],
	[a_Bottom].[ParentID],
	[a_Bottom].[ChildID],
	[a_Bottom].[GrandChildID]
FROM
	[Parent] [t]
		LEFT JOIN [Child] [a_Middle] ON [t].[ParentID] = [a_Middle].[ParentID]
		LEFT JOIN [GrandChild] [a_Bottom] ON [a_Middle].[ChildID] = [a_Bottom].[ChildID]
WHERE
	[t].[ParentID] IN (1, 5)
ORDER BY
	[t].[ParentID]

