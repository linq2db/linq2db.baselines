﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_GrandChildren].[ParentID],
	[a_GrandChildren].[ChildID],
	[a_GrandChildren].[GrandChildID]
FROM
	[GrandChild] [p]
		LEFT JOIN [Child] [a_Child] ON [p].[ParentID] = [a_Child].[ParentID] AND [p].[ChildID] = [a_Child].[ChildID]
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Child].[ParentID] IS NOT NULL AND [a_Child].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Child].[ChildID] = [a_GrandChildren].[ChildID]
LIMIT 1

