﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[gc].[ParentID],
	[gc].[ChildID],
	[gc].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [gc] ON ([p].[ParentID] = [gc].[ParentID])
WHERE
	[gc].[ChildID] = 22

