﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND EXISTS(
				SELECT
					1
				FROM
					[GrandChild] [g_1]
				WHERE
					[c_1].[ParentID] = [g_1].[ParentID] AND [c_1].[ChildID] = [g_1].[ChildID] AND
					[g_1].[ParentID] > 3
			)
	)

