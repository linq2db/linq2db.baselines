-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[x].[ChildID],
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ParentID] = [x].[ParentID] AND [g_1].[ChildID] = [x].[ChildID]
	)
FROM
	[Parent] [p]
		INNER JOIN [Child] [x] ON [x].[ParentID] = [p].[ParentID]

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

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

