﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[sub].[ParentID_1],
	[sub].[ChildID]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[p].[ParentID] as [ParentID_1],
			[c_1].[ChildID],
			[p].[Value1]
		FROM
			[Parent] [p],
			[Child] [c_1]
	) [sub]
		LEFT JOIN [Parent] [a_Parent] ON ([sub].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] = [sub].[ParentID_1] AND [a_Parent].[ParentID] IS NOT NULL AND
	([a_Parent].[Value1] = [sub].[Value1] AND [a_Parent].[Value1] IS NOT NULL AND [sub].[Value1] IS NOT NULL OR [a_Parent].[Value1] IS NULL AND [sub].[Value1] IS NULL)
ORDER BY
	[sub].[ParentID_1],
	[sub].[ChildID]

