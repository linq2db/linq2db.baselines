BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_1].[ChildID],
	Avg([_1].[ParentID])
FROM
	(
		SELECT
			[_].[ChildID],
			[_].[ParentID]
		FROM
			[Child] [_]
	) [_1]
GROUP BY
	[_1].[ChildID]

