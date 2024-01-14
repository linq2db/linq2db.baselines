BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[_].[ChildID],
	Avg([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

