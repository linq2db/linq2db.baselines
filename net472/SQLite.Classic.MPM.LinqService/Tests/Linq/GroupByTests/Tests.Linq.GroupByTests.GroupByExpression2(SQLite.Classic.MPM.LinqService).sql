BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ChildID],
	Avg([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

