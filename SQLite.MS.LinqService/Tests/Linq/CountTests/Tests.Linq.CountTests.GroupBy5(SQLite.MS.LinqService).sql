BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[MAX_1],
	[t1].[ID2] + 1,
	[t1].[ID2],
	[t1].[COUNT_1]
FROM
	(
		SELECT
			COUNT(CASE
				WHEN [g_1].[ChildID] > 20 THEN 1
				ELSE NULL
			END) as [ID2],
			MAX([g_1].[ChildID]) as [MAX_1],
			COUNT(CASE
				WHEN [g_1].[ChildID] > 10 THEN 1
				ELSE NULL
			END) as [COUNT_1]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [t1]

