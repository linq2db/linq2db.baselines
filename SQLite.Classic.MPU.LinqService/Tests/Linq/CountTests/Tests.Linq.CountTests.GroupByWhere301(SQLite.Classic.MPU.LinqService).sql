BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_2].[ParentID]
FROM
	(
		SELECT
			COUNT(*) as [COUNT_1],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	([g_2].[COUNT_1] > 3 OR [g_2].[ParentID] = 1)

