BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a_Children].[ParentID] + 1
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
WHERE
	[a_Children].[ParentID] > 0

