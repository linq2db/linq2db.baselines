﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[cross_1].[ParentID],
	[cross_1].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID],
			[c_1].[ChildID],
			[p].[Value1],
			[c_1].[ParentID] as [ParentID_1]
		FROM
			[Parent] [p],
			[Child] [c_1]
	) [cross_1]
		LEFT JOIN [Parent] [a_Parent] ON ([cross_1].[ParentID_1] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] = [cross_1].[ParentID] AND ([a_Parent].[Value1] = [cross_1].[Value1] OR [a_Parent].[Value1] IS NULL AND [cross_1].[Value1] IS NULL)
ORDER BY
	[cross_1].[ParentID],
	[cross_1].[ChildID]

