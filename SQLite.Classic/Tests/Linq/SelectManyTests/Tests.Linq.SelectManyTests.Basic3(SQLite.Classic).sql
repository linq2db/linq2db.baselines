BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]
WHERE
	[t1].[ParentID] > 0

