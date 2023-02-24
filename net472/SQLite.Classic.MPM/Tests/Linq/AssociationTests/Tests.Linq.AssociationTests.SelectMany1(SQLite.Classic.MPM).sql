BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[cp].[ParentID],
	[cp].[Value1]
FROM
	[Parent] [cp]
		INNER JOIN [Child] [c_1] ON [cp].[ParentID] = [c_1].[ParentID]

