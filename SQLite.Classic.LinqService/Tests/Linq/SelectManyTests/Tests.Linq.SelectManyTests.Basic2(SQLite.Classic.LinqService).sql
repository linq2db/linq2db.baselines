BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]

