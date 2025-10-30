BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[g_2].[c1],
	[g_2].[c2] + 1,
	[g_2].[c2],
	[g_2].[c3]
FROM
	(
		SELECT
			MAX([g_1].[ChildID]) as [c1],
			COUNT(CASE
				WHEN [g_1].[ChildID] > 20 THEN 1
				ELSE NULL
			END) as [c2],
			COUNT(CASE
				WHEN [g_1].[ChildID] > 10 THEN 1
				ELSE NULL
			END) as [c3]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]

