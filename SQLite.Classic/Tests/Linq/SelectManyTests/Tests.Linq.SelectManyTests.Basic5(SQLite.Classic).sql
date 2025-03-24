﻿BeforeExecute
--  SQLite.Classic SQLite

SELECT
	[a_GrandChildren].[ParentID],
	[a_GrandChildren].[ChildID],
	[a_GrandChildren].[GrandChildID]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [a_Parent] ON [t].[ParentID] = [a_Parent].[ParentID]
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Parent].[ParentID] = [a_GrandChildren].[ParentID]

