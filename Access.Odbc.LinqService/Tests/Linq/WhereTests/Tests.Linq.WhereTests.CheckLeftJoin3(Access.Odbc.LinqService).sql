﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [GrandChild] [ch] ON (([p].[ParentID] = 1 + [ch].[ParentID]) AND [ch].[ParentID] > 0)
WHERE
	1 + [ch].[ParentID] IS NULL AND
	[ch].[ChildID] IS NULL AND
	1 + [ch].[ParentID] IS NULL AND
	[ch].[ChildID] IS NULL

