-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[c_1].[ChildID],
	CASE
		WHEN (
			SELECT
				1
			FROM
				[GrandChild] [v]
			WHERE
				[v].[ChildID] = [c_1].[ChildID]
			LIMIT 1
		) IS NOT NULL
			THEN [p].[Value1]
		ELSE NULL
	END
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

