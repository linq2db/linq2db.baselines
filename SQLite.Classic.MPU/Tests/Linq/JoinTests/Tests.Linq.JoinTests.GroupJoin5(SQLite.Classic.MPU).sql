BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[ch].[ParentID],
				[ch].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [ch].[ParentID] ORDER BY [ch].[ChildID]) as [rn]
			FROM
				[Child] [ch]
		) [t1] ON [p].[ParentID] = [t1].[ParentID] AND [t1].[rn] <= 1
WHERE
	[p].[ParentID] >= 1
ORDER BY
	[p].[ParentID]

