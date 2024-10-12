BeforeExecute
-- SQLite.MS SQLite

SELECT
	SUM([ch].[ParentID])
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [p] ON [ch].[ParentID] = [p].[ParentID]
GROUP BY
	[ch].[ChildID]

