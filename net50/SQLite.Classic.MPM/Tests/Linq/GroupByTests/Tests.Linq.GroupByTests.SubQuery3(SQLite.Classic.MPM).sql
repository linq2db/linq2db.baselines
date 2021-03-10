BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[ch].[ChildID] + 1,
	Sum([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID] + 1

