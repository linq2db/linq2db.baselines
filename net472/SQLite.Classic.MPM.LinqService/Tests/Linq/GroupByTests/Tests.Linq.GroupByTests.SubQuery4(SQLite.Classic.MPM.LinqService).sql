BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[c2],
	Sum([t1].[ParentID])
FROM
	(
		SELECT
			[selectParam].[ChildID] + 1 as [c1],
			[selectParam].[ChildID] + 1 as [c2],
			[selectParam].[ParentID]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

