BeforeExecute
-- SQLite.MS SQLite

SELECT
	MAX([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

