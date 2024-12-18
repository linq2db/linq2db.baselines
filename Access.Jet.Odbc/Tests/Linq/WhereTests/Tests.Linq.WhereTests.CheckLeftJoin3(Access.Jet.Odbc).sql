﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [GrandChild] [ch] ON ([p].[ParentID] = 1 + [ch].[ParentID] AND [ch].[ParentID] IS NOT NULL AND [ch].[ParentID] > 0 AND [ch].[ParentID] IS NOT NULL)
WHERE
	NOT ([ch].[ParentID] IS NOT NULL AND [ch].[ChildID] IS NOT NULL) AND
	NOT ([ch].[ParentID] IS NOT NULL AND [ch].[ChildID] IS NOT NULL)

