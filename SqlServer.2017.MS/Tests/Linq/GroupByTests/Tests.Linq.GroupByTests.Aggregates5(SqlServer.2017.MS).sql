BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_2].[Count_1],
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 30 AND [g_2].[ParentID] = [ch].[ParentID]
	),
	[g_2].[Count_2]
FROM
	(
		SELECT
			Count(IIF([g_1].[ChildID] > 30, 1, NULL)) as [Count_1],
			Count(*) as [Count_2],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]

