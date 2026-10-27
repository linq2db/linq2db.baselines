-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p]
INTERSECT
SELECT
	[p_1].[ParentID],
	[t1].[ParentID],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p_1]
		LEFT JOIN (
			SELECT
				[c_1].[ParentID],
				[c_1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [c_1].[ParentID] ORDER BY [c_1].[ChildID]) as [rn]
			FROM
				[Child] [c_1]
		) [t1] ON [t1].[ParentID] = [p_1].[ParentID] AND [t1].[rn] = 1

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

