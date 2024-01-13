BeforeExecute
-- SQLite.MS SQLite

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [ch] ON 1=1
WHERE
	[t1].[ParentID] = [ch].[ParentID]

