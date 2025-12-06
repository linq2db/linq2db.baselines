-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

