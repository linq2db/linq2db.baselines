﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Count_1]
FROM
	(
		SELECT
			[p2].[ParentID] + 2 as [ID],
			[p2].[ParentID]
		FROM
			[Parent] [p2]
		WHERE
			[p2].[ParentID] > -1
	) [p1]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[g_1].[ParentID],
				[c_1].[ParentID] as [ParentID_1]
			FROM
				[Child] [c_1]
					INNER JOIN [GrandChild] [g_1] ON ([c_1].[ParentID] = [g_1].[ParentID] AND [c_1].[ChildID] = [g_1].[ChildID])
			GROUP BY
				[g_1].[ParentID],
				[c_1].[ParentID]
		) [t1] ON ([t1].[ParentID] + 1 < [p1].[ID] AND [t1].[ParentID] + 1 < [p1].[ID] AND [p1].[ParentID] = [t1].[ParentID_1])
WHERE
	[p1].[ID] > 0

