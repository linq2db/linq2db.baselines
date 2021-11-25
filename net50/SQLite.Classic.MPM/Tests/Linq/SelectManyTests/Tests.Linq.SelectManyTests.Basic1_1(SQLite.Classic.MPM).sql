BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[GrandChildID]
FROM
	[Parent] [cp],
	[Child] [cp_1],
	[GrandChild] [c_1]

