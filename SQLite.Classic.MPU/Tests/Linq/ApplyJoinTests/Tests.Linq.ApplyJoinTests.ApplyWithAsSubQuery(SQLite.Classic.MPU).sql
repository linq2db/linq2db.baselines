-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_2].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN (
			SELECT
				[c_1].[ChildID],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		) [c_2] ON [c_2].[ParentID] = [p].[ParentID]
ORDER BY
	[c_2].[ChildID]

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

