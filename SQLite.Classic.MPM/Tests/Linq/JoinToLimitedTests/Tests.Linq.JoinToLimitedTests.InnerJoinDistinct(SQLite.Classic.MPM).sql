BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [o]
		INNER JOIN [Child] [c_1] ON [o].[ParentID] = [c_1].[ParentID]

