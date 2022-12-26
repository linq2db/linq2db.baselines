BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[selectParam].[ChildID] + 1,
	Sum([selectParam].[ParentID])
FROM
	[Child] [selectParam]
GROUP BY
	[selectParam].[ChildID] + 1

