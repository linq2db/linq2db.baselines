BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1]
		CROSS JOIN (
			SELECT
				[g_1].[ParentID]
			FROM
				[Child] [g_1]
			GROUP BY
				[g_1].[ParentID]
		) [pmp]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

