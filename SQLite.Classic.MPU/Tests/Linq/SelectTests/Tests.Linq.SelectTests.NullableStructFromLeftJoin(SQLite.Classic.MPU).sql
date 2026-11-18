-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

