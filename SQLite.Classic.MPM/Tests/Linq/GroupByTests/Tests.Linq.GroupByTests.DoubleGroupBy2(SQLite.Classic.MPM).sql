BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Key_1],
	SUM([t1].[Max_1])
FROM
	(
		SELECT
			[g_1].[ParentID] as [Key_1],
			MAX([g_1].[Value1]) as [Max_1]
		FROM
			[Parent] [g_1]
		WHERE
			[g_1].[Value1] IS NOT NULL
		GROUP BY
			[g_1].[ParentID]
	) [t1]
GROUP BY
	[t1].[Key_1]

