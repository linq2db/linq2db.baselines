﻿BeforeExecute
-- SqlServer.2012

SELECT
	[p1].[ParentID],
	[p1].[Value1],
	[p2].[ParentID],
	[p2].[Sum1]
FROM
	[Parent] [p1]
		LEFT JOIN (
			SELECT
				[g_1].[ParentID],
				SUM([g_1].[ParentID]) as [Sum1]
			FROM
				[Parent] [g_1]
			WHERE
				[g_1].[ParentID] IN (
					SELECT
						[ch].[ParentID]
					FROM
						[Child] [ch]
				)
			GROUP BY
				[g_1].[ParentID]
		) [p2] ON [p2].[ParentID] = [p1].[ParentID]

