BeforeExecute
-- SQLite.Classic SQLite

SELECT
	MAX([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

