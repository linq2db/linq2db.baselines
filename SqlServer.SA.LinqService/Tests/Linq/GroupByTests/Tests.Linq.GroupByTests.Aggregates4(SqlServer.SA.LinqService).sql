BeforeExecute
-- SqlServer.SA SqlServer.2019

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
			Count(IIF([g_1].[ChildID] > 30, 1, NULL)) as [Count_1],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]

