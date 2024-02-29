BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

