BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

