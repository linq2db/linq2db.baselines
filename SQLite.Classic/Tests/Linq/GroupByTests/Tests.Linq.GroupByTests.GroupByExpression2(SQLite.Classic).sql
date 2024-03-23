BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[_].[ChildID],
	AVG([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

