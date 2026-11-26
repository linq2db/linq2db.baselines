-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [v_1].[not_null] IS NOT NULL THEN [c_1].[ParentID]
		ELSE NULL
	END
FROM
	[Child] [c_1]
		LEFT JOIN (
			SELECT
				1 as [not_null],
				[v].[ChildID]
			FROM
				[GrandChild] [v]
		) [v_1] ON [c_1].[ChildID] = [v_1].[ChildID]

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

