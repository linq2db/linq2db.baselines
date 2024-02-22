BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_2].[Count_1],
	(
		SELECT
			Sum([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 30 AND [g_2].[ParentID] = [ch].[ParentID]
	)
FROM
	(
		SELECT
			Count(CASE
				WHEN [g_1].[ChildID] > 30 THEN 1
				ELSE NULL
			END) as [Count_1],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]

