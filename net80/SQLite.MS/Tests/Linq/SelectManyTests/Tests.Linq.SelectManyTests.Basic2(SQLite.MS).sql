BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [_]

