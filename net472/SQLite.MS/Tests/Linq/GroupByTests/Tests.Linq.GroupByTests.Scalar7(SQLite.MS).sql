BeforeExecute
-- SQLite.MS SQLite

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

