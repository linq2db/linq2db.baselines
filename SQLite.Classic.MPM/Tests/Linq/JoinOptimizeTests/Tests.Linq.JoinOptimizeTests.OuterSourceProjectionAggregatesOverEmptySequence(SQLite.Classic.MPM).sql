-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[c_1].[ChildID],
	(
		SELECT
			MAX(CASE
				WHEN [d].[not_null] IS NOT NULL THEN [p].[ParentID]
				ELSE NULL
			END)
		FROM
			(
				SELECT
					1 as [c1]
			) [t1]
				LEFT JOIN (
					SELECT
						1 as [not_null]
					FROM
						[GrandChild] [g_1]
					WHERE
						[g_1].[ChildID] = [c_1].[ChildID]
				) [d] ON 1=1
	)
FROM
	[Parent] [p],
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ChildID],
	(
		SELECT
			MAX(CASE
				WHEN [d].[not_null] IS NOT NULL THEN [t1].[ParentID]
				ELSE NULL
			END)
		FROM
			(
				SELECT
					1 as [c1]
			) [t2]
				LEFT JOIN (
					SELECT
						1 as [not_null]
					FROM
						[GrandChild] [x]
					WHERE
						[t1].[ChildID] = [x].[ChildID]
				) [d] ON 1=1
	)
FROM
	[Child] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

