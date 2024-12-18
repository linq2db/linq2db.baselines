﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[a_Parent_1].[ParentID]
FROM
	(
		SELECT
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
		HAVING
			COUNT(*) > 2
	) [g_2]
		INNER JOIN ([Child] [ch]
			LEFT JOIN [Parent] [a_Parent_1] ON [ch].[ParentID] = [a_Parent_1].[ParentID])
		ON ([g_2].[ParentID] = [a_Parent_1].[ParentID] AND [g_2].[ParentID] IS NOT NULL AND [a_Parent_1].[ParentID] IS NOT NULL OR [g_2].[ParentID] IS NULL AND [a_Parent_1].[ParentID] IS NULL) AND ([g_2].[Value1] = [a_Parent_1].[Value1] AND [g_2].[Value1] IS NOT NULL AND [a_Parent_1].[Value1] IS NOT NULL OR [g_2].[Value1] IS NULL AND [a_Parent_1].[Value1] IS NULL)

