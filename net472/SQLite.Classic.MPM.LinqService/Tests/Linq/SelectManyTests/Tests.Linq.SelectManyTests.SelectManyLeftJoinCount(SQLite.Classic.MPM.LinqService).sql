BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Parent] [p]
		LEFT JOIN [Child] [o] ON [p].[ParentID] = [o].[ParentID]

