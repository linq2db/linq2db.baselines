﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	((
		SELECT
			[p_1].[p],
			[c_2].[ParentID]
		FROM
			(
				SELECT DISTINCT
					[p].[ParentID] as [p],
					[p].[Value1] as [p_1]
				FROM
					([Parent] [p]
						INNER JOIN [GrandChild] [c_1] ON ([p].[ParentID] = [c_1].[ParentID]))
						INNER JOIN [LinqDataTypes] [_] ON ([c_1].[ParentID] = [_].[ID])
				WHERE
					[p].[ParentID] = 1 AND [_].[ID] > 1 AND [_].[ID] > 2
			) [p_1],
			[Parent] [c_2]
	) [cross_1]
		INNER JOIN [GrandChild] [g_1] ON ([cross_1].[p] = [g_1].[ParentID]))
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID])
WHERE
	[cross_1].[p] = [g_1].[ParentID] AND [g_1].[ParentID] = [cross_1].[ParentID] AND
	[a_Child].[ChildID] = 1
ORDER BY
	[cross_1].[p]

