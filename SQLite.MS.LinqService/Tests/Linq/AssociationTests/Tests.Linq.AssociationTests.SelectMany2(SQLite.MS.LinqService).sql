BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [ch]

