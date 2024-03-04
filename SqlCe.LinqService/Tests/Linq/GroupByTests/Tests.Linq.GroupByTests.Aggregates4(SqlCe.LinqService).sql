BeforeExecute
-- SqlCe

SELECT
	[g_2].[Count_1],
	[t1].[Sum_1]
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
		OUTER APPLY (
			SELECT
				Sum([ch].[ChildID]) as [Sum_1]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ChildID] > 30 AND [g_2].[ParentID] = [ch].[ParentID]
		) [t1]

