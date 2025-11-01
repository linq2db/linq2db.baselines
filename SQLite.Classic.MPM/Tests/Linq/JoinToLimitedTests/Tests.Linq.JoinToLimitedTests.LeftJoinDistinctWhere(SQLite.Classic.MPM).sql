-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	[Parent] [o]
		LEFT JOIN (
			SELECT DISTINCT
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
		) [c_2] ON [c_2].[ParentID] = [o].[ParentID]

