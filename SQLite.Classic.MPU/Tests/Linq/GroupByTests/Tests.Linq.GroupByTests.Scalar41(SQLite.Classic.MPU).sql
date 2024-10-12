BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[MIN_2]
FROM
	(
		SELECT
			MIN(CASE
				WHEN [g_1].[ParentID] > 2 THEN [g_1].[ChildID]
				ELSE NULL
			END) as [MIN_1],
			MIN(CASE
				WHEN [g_1].[ParentID] > 2 THEN [g_1].[ChildID]
				ELSE NULL
			END) as [MIN_2]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [t1]
WHERE
	[t1].[MIN_1] IS NOT NULL

