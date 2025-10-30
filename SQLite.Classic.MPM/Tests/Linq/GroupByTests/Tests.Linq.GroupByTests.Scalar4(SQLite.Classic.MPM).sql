BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_2].[Min_2]
FROM
	(
		SELECT
			MIN(CASE
				WHEN [g_1].[ParentID] > 2 THEN [g_1].[ChildID]
				ELSE NULL
			END) as [Min_1],
			MIN(CASE
				WHEN [g_1].[ParentID] > 2 THEN [g_1].[ChildID]
				ELSE NULL
			END) as [Min_2]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	[g_2].[Min_1] IS NOT NULL

