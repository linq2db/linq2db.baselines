﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

