﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[Value1] = 1 AND [p].[Value1] IS NOT NULL

