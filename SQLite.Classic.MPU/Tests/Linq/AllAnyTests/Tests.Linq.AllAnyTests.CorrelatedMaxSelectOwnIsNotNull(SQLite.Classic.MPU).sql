-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	(
		SELECT
			MAX(CASE
				WHEN [g_1].[ChildID] IS NOT NULL THEN [g_1].[GrandChildID]
				ELSE 0
			END)
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

