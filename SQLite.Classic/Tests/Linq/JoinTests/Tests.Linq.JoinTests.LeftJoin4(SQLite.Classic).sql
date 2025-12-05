-- SQLite.Classic SQLite

SELECT
	[Parent_1].[ParentID],
	[Parent_1].[Value1],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [Parent_1]
		LEFT JOIN [Child] [y4] ON [Parent_1].[ParentID] = [y4].[ParentID] AND [Parent_1].[Value1] = [y4].[ParentID]
		LEFT JOIN (
			SELECT
				[y1].[ParentID],
				[y1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [y1].[ParentID] ORDER BY [y1].[ParentID]) as [rn]
			FROM
				[Child] [y1]
		) [t1] ON [Parent_1].[ParentID] = [t1].[ParentID] AND [Parent_1].[Value1] = [t1].[ParentID] AND [t1].[rn] <= 1
WHERE
	[Parent_1].[ParentID] = 1 AND [Parent_1].[Value1] IS NOT NULL
ORDER BY
	[Parent_1].[ParentID]

