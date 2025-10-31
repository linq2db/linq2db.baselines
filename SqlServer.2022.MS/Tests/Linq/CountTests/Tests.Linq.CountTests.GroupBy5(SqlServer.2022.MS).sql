-- SqlServer.2022.MS SqlServer.2022

SELECT
	[g_2].[MAX_1],
	[g_2].[COUNT_1] + 1,
	[g_2].[COUNT_1],
	[g_2].[COUNT_2]
FROM
	(
		SELECT
			MAX([g_1].[ChildID]) as [MAX_1],
			COUNT(IIF([g_1].[ChildID] > 20, 1, NULL)) as [COUNT_1],
			COUNT(IIF([g_1].[ChildID] > 10, 1, NULL)) as [COUNT_2]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]

