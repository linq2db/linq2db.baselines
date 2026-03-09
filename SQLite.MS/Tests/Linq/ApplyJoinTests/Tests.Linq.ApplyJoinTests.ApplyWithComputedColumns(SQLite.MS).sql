-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[stats_1].[ChildCount],
	[stats_1].[MaxChildID],
	[stats_1].[MinChildID]
FROM
	[Parent] [p]
		INNER JOIN (
			SELECT
				COUNT(*) as [ChildCount],
				MAX([stats].[ChildID]) as [MaxChildID],
				MIN([stats].[ChildID]) as [MinChildID],
				[stats].[ParentID]
			FROM
				[Child] [stats]
			GROUP BY
				[stats].[ParentID]
		) [stats_1] ON [stats_1].[ParentID] = [p].[ParentID]

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

