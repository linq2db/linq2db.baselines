BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x5].[ParentID],
	[x5].[Value1],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [x5]
		LEFT JOIN [Child] [y4] ON [x5].[ParentID] = [y4].[ParentID] AND [x5].[Value1] = [y4].[ParentID]
		LEFT JOIN (
			SELECT
				[y1].[ParentID],
				[y1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [y1].[ParentID] ORDER BY [y1].[ParentID]) as [rn]
			FROM
				[Child] [y1]
		) [t1] ON [x5].[ParentID] = [t1].[ParentID] AND [x5].[Value1] = [t1].[ParentID] AND [t1].[rn] <= 1
WHERE
	[x5].[ParentID] = 1 AND [x5].[Value1] IS NOT NULL
ORDER BY
	[x5].[ParentID]

