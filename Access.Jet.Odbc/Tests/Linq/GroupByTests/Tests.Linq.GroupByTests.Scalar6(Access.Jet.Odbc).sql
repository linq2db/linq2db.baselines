﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	MAX(IIF([g_1].[ParentID] < 3, [g_1].[ChildID], NULL))
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] < 3
GROUP BY
	[g_1].[ParentID]

