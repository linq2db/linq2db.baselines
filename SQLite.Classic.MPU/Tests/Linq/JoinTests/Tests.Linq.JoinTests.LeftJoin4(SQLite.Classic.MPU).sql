-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t2].[ParentID],
	[t2].[Value1],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [t2]
		LEFT JOIN (
			SELECT
				[y1].[ParentID],
				[y1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [y1].[ParentID] ORDER BY [y1].[ParentID]) as [rn]
			FROM
				[Child] [y1]
		) [t1] ON [t2].[ParentID] = [t1].[ParentID] AND [t2].[Value1] = [t1].[ParentID] AND [t1].[rn] = 1
		LEFT JOIN [Child] [y4] ON [t2].[ParentID] = [y4].[ParentID] AND [t2].[Value1] = [y4].[ParentID]
WHERE
	[t2].[ParentID] = 1 AND [t2].[Value1] IS NOT NULL
ORDER BY
	[t2].[ParentID]

