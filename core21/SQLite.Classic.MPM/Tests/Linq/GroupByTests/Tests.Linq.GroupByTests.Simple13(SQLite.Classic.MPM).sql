BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[selectParam].[ChildID]
FROM
	[GrandChild] [selectParam]
GROUP BY
	[selectParam].[ParentID] + 1,
	[selectParam].[ChildID]

