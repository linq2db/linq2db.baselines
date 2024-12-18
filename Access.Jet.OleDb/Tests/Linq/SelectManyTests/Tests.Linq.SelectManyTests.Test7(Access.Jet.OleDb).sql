﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	((
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p],
			[Parent] [c_1]
	) [sub]
		INNER JOIN [GrandChild] [g_1] ON ([sub].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] IS NOT NULL))
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ParentID] IS NOT NULL AND [g_1].[ChildID] = [a_Child].[ChildID] AND [g_1].[ChildID] IS NOT NULL)
WHERE
	[sub].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] IS NOT NULL

