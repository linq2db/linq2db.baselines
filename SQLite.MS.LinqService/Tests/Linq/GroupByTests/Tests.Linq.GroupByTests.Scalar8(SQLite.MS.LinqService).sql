BeforeExecute
-- SQLite.MS SQLite

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

