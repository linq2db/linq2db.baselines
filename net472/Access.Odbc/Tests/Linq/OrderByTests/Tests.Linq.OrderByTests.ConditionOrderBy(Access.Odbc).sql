﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	Iif([t1].[ParentID] > 0 AND [t1].[ChildID] <> [t1].[ParentID], True, False) DESC,
	[t1].[ChildID]

