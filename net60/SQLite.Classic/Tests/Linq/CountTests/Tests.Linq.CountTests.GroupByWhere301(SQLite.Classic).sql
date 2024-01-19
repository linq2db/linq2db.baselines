BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[g_2].[ParentID]
FROM
	(
		SELECT
			Count(*) as [Count_1],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	([g_2].[Count_1] > 3 OR [g_2].[ParentID] = 1)

