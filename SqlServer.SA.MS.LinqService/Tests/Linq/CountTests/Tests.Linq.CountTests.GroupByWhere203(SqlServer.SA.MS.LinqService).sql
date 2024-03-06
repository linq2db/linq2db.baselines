BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[g_2].[ParentID]
FROM
	(
		SELECT
			Count(IIF([g_1].[ChildID] > 20, 1, NULL)) as [Count_1],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	([g_2].[Count_1] > 2 OR [g_2].[ParentID] > 2)

