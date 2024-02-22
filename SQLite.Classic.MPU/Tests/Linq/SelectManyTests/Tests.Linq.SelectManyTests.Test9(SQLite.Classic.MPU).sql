BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
				INNER JOIN [GrandChild] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
				INNER JOIN [LinqDataTypes] [t] ON [c_1].[ParentID] = [t].[ID]
		WHERE
			[p].[ParentID] = 1 AND [t].[ID] > 1 AND [t].[ID] > 2
	) [_]
		INNER JOIN [GrandChild] [g_1] ON [_].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] OR [g_1].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([g_1].[ChildID] = [a_Child].[ChildID] OR [g_1].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		CROSS JOIN [Parent] [c_2]
WHERE
	[a_Child].[ChildID] = 1 AND [_].[ParentID] = [g_1].[ParentID] AND
	[g_1].[ParentID] = [c_2].[ParentID]
ORDER BY
	[_].[ParentID]

