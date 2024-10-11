BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	MAX([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

