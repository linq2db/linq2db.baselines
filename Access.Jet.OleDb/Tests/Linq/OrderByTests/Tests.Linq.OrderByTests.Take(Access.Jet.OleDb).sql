﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT TOP 3
			[p].[ParentID],
			[p].[Value1]
		FROM
			([Parent] [p]
				INNER JOIN [Child] [c_1] ON ([p].[ParentID] = [c_1].[ParentID]))
				INNER JOIN [GrandChild] [g_1] ON ([c_1].[ChildID] = [g_1].[ChildID])
	) [t1]
ORDER BY
	[t1].[ParentID]

